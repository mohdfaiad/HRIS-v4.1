unit SyncClientWebMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, ISyncWebWSDL;

type
  TfrmSyncClientWebMain = class(TForm)
    ConnectionMain: TADOConnection;
    SychronizeToWeb: TCheckBox;
    Label1: TLabel;
    DBGrid1: TDBGrid;
    dscMessages: TDataSource;
    dstMessages: TADODataSet;
    lblUpdate: TLabel;
    lblRecordsRemaining: TLabel;
    ConnectionHRIS: TADOConnection;
    edSQL: TEdit;
    dqSync: TADOQuery;
    btnSkipRecord: TButton;
    SynchronizeToServer: TCheckBox;
    lblSyncServerUpdate: TLabel;
    dstMessage: TADODataSet;
    edSyncError: TEdit;
    procedure ConnectionMainBeforeConnect(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SychronizeToWebClick(Sender: TObject);
    procedure ConnectionHRISBeforeConnect(Sender: TObject);
    procedure btnSkipRecordClick(Sender: TObject);
    procedure SynchronizeToServerClick(Sender: TObject);
  private
    { Private declarations }
    procedure SyncMessage;
    procedure MarkSkip;
    procedure PostMessageToStaging(wsMessage: ISyncWebWSDL.TWSMessage);
    procedure PostMessage;
  public
    { Public declarations }
  end;

var
  frmSyncClientWebMain: TfrmSyncClientWebMain;

implementation

uses
  ConnUtil, System.Threading;

{$R *.dfm}

procedure TfrmSyncClientWebMain.btnSkipRecordClick(Sender: TObject);
begin
  MarkSkip;
end;

procedure TfrmSyncClientWebMain.ConnectionHRISBeforeConnect(Sender: TObject);
begin
  ConnectionHRIS.ConnectionString := GetConnection('','','');
end;

procedure TfrmSyncClientWebMain.ConnectionMainBeforeConnect(Sender: TObject);
begin
  {$ifdef DEBUG}
  ConnectionMain.ConnectionString := 'Provider=SQLOLEDB.1;Password=cnn;' +
                'Persist Security Info=False;' +
                'User ID=sa;Initial Catalog=HRISWeb' +
                ';Data Source=BRYAN-LENOVO\DEV' +
                ';Use Procedure for Prepare=1;' +
                'Auto Translate=True;Packet Size=4096;' +
                ';Use Encryption for Data=False;' +
                'Tag with column collation when possible=False;' +
                'MARS Connection=False;DataTypeCompatibility=0;' +
                'Trust Server Certificate=False';

  {$else}
  ConnectionMain.ConnectionString := 'Provider=SQLOLEDB.1;Password=Dijd5?78;' +
                'Persist Security Info=False;' +
                'User ID=hris;Initial Catalog=HRISWeb' +
                ';Data Source=localhost' +
                ';Use Procedure for Prepare=1;' +
                'Auto Translate=True;Packet Size=4096;' +
                ';Use Encryption for Data=False;' +
                'Tag with column collation when possible=False;' +
                'MARS Connection=False;DataTypeCompatibility=0;' +
                'Trust Server Certificate=False';
  {$endif}

end;

procedure TfrmSyncClientWebMain.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  ConnectionMain.Close;
  ConnectionHRIS.Close;
end;

procedure TfrmSyncClientWebMain.FormCreate(Sender: TObject);
begin
  ConnectionMain.Open;
  ConnectionHRIS.Open;
end;

procedure TfrmSyncClientWebMain.MarkSkip;
var
  eventObject,pkEventObject,sourceLocation, sql: string;
begin
  try
    with dstMessages do
    begin
      if RecordCount = 0 then Exit;

      eventObject := FieldByName('event_object').AsString;
      pkEventObject := FieldByName('pk_event_object').AsString;
      sourceLocation := FieldByName('source_location').AsString;
    end;

    sql := 'update wsmessage set skip = 1 ' +
      ' where event_object = ' + QuotedStr(eventObject) +
      ' and pk_event_object = ' + QuotedStr(pkEventObject) +
      ' and source_location = ' + QuotedStr(sourceLocation);

    edSQL.Text := sql;

    Application.ProcessMessages;

    ConnectionMain.Execute(sql);

    dstMessages.Requery;
  except
    on E: Exception do MessageDlg(E.Message,mtError,[mbOK],0);
  end;
end;

procedure TfrmSyncClientWebMain.PostMessageToStaging(wsMessage: ISyncWebWSDL.TWSMessage);
var
  sql: string;
begin
  try
    try
      sql := 'select * from wsmessage where ' +
              ' source_location = ''' + wsMessage.SourceLocation + '''' +
              ' and destination_location = ''' + wsMessage.DestinationLocation + '''' +
              ' and event_object = ''' + wsMessage.EventObject + '''' +
              ' and pk_event_object = ''' + (wsMessage.PkEventObject) + '''';

      dstMessage.CommandText := sql;

      dstMessage.Open;

      // the SQL above simply checks if the record already exists
      // append or edit accordingly

      if dstMessage.RecordCount = 0 then
        dstMessage.Append
      else
        dstMessage.Edit;

      dstMessage.FieldByName('event_object').AsString :=
        wsMessage.EventObject;
      dstMessage.FieldByName('pk_event_object').AsString :=
        wsMessage.PkEventObject;
      dstMessage.FieldByName('ws_message').AsString :=
        wsMessage.WSMessage;
      dstMessage.FieldByName('ws_message_date').AsDateTime :=
        wsMessage.WSMessageDate;
      dstMessage.FieldByName('priority').AsInteger :=
        wsMessage.Priority;
      dstMessage.FieldByName('source_location').AsString :=
        wsMessage.SourceLocation;
      dstMessage.FieldByName('destination_location').AsString :=
        wsMessage.DestinationLocation;
      dstMessage.FieldByName('messagetype_code').AsString :=
        wsMessage.MessageTypeCode;
      dstMessage.FieldByName('messagestatus_code').AsString :=
        wsMessage.MessageStatusCode;

      dstMessage.Post;

    except
      on e: exception do
        edSyncError.Text := e.Message;
    end;
  finally
    dstMessage.Close;
  end;
end;

procedure TfrmSyncClientWebMain.PostMessage;
var
  sql, path, rtn: string;
  dstXML: TADODataSet;
  qryWMMessage: TADOQuery;
  wsMessage: ISyncWebWSDL.TWSMessage;
begin
  dstXML := TADODataSet.Create(nil);

  wsMessage := ISyncWebWSDL.TWSMessage.Create;

  try
    try
      sql := 'exec dbo.sync_generate_xml';

      dstXML.Connection := ConnectionHRIS;
      dstXML.CommandText := sql;
      dstXML.Open;

      qryWMMessage := TADOQuery.Create(nil);
      qryWMMessage.Connection := ConnectionHRIS;

      edSyncError.Text := 'Checking event object';
      Application.ProcessMessages;

      if dstXML.FieldByName('event_object').AsString <> '' then
      begin
        wsMessage.EventObject := dstXML.FieldByName('event_object').AsString;
        wsMessage.PkEventObject := dstXML.FieldByName('pk_event_object').AsString;
        wsMessage.WSMessage := dstXML.FieldByName('ws_message').AsString;
        wsMessage.WSMessageDate := dstXML.FieldByName('ws_message_date').AsDateTime;
        wsMessage.Priority := dstXML.FieldByName('priority').AsInteger;
        wsMessage.SourceLocation := dstXML.FieldByName('source_location').AsString;
        wsMessage.DestinationLocation := dstXML.FieldByName('destination_location').AsString;
        wsMessage.MessageTypeCode := dstXML.FieldByName('messagetype_code').AsString;
        wsMessage.MessageStatusCode := dstXML.FieldByName('messagestatus_code').AsString;

        // iniFile.WriteString('SyncError','SyncEventObject',wsMessage.EventObject);
        // iniFile.WriteString('SyncError','SyncPK',IntToStr(wsMessage.PkEventObject));
        // iniFile.WriteString('SyncError','SyncMessage',wsMessage.WSMessage);
        // iniFile.WriteString('SyncError','Sync',GetISyncWeb.SendMessage(wsMessage));

        edSyncError.Text := 'Posting to staging';
        Application.ProcessMessages;

        PostMessageToStaging(wsMessage);

        qryWMMessage.SQL.Text := 'exec dbo.sync_set_wsmessageout_status ''' +
          wsMessage.EventObject + ''',''' + wsMessage.PkEventObject +
          ''',''' + wsMessage.DestinationLocation + ''',''SSV''';


        qryWMMessage.ExecSQL;
      end
      else
    except
      on e : Exception do
      begin
        edSyncError.Text := e.Message;
        Application.ProcessMessages;
      end;
    end;
  finally
    dstXML.Close;
    dstXML.Free;
    qryWMMessage.Free;
  end;
end;
procedure TfrmSyncClientWebMain.SychronizeToWebClick(Sender: TObject);
begin
  TTask.Run(
      procedure
      begin
        dstMessages.Open;
        while (Sender as TCheckBox).Checked do
        begin
          Sleep(200);

          SyncMessage;
          TThread.Synchronize(nil,
            procedure
            begin
              lblUpdate.Caption := 'Last update at ' + FormatDateTime('mmm dd yyyy hh:mm:ss',Now);
              lblRecordsRemaining.Caption := 'Records remaining: ' + IntToStr(dstMessages.RecordCount);
            end
            );

          dstMessages.Requery;
        end;
      end
    );
end;

procedure TfrmSyncClientWebMain.SynchronizeToServerClick(Sender: TObject);
begin
  TTask.Run(
      procedure
      begin
        dstMessages.Open;
        while (Sender as TCheckBox).Checked do
        begin
          Sleep(300);

          PostMessage;

          TThread.Synchronize(nil,
            procedure
            begin
              lblSyncServerUpdate.Caption := 'Last message sent: ' + FormatDateTime('mm-dd-yyyy hh:mm:ss am/pm',Now);
            end
            );

          dstMessages.Requery;
        end;
      end
    );
end;

procedure TfrmSyncClientWebMain.SyncMessage;
var
  eventObject,pkEventObject,sourceLocation, sql: string;
begin
  try
    with dstMessages do
    begin
      if RecordCount = 0 then Exit;

      eventObject := FieldByName('event_object').AsString;
      pkEventObject := FieldByName('pk_event_object').AsString;
      sourceLocation := FieldByName('source_location').AsString;
    end;

    sql := 'exec dbo.sync_xml_to_db_web ' +
      QuotedStr(eventObject) + ',' +
      QuotedStr(pkEventObject) + ',' +
      QuotedStr(sourceLocation);

    edSQL.Text := sql;

    Application.ProcessMessages;

    ConnectionHRIS.Execute(sql);
  except
    on E: Exception do MessageDlg(E.Message,mtError,[mbOK],0);
  end;
end;

end.
