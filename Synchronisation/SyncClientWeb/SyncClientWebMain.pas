unit SyncClientWebMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TfrmSyncClientWebMain = class(TForm)
    ConnectionMain: TADOConnection;
    SychronizeToWeb: TCheckBox;
    Label1: TLabel;
    DBGrid1: TDBGrid;
    dscLeaves: TDataSource;
    dstLeaves: TADODataSet;
    lblUpdate: TLabel;
    lblRecordsRemaining: TLabel;
    ConnectionHRIS: TADOConnection;
    edSQL: TEdit;
    dqSync: TADOQuery;
    btnSkipRecord: TButton;
    SynchronizeToServer: TCheckBox;
    lblSyncServerUpdate: TLabel;
    procedure ConnectionMainBeforeConnect(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SychronizeToWebClick(Sender: TObject);
    procedure ConnectionHRISBeforeConnect(Sender: TObject);
    procedure btnSkipRecordClick(Sender: TObject);
    procedure SynchronizeToServerClick(Sender: TObject);
  private
    { Private declarations }
    procedure SyncLeave;
    procedure MarkSkip;
    procedure SendMessage;
  public
    { Public declarations }
  end;

var
  frmSyncClientWebMain: TfrmSyncClientWebMain;

implementation

uses
  ConnUtil, System.Threading, ISyncWebWSDL;

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
    with dstLeaves do
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

    dstLeaves.Requery;
  except
    on E: Exception do MessageDlg(E.Message,mtError,[mbOK],0);
  end;
end;

procedure TfrmSyncClientWebMain.SendMessage;
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

      dstXML.ConnectionString := ConnectionHRIS.ConnectionString;
      dstXML.CommandText := sql;
      dstXML.Open;

      qryWMMessage := TADOQuery.Create(nil);
      qryWMMessage.ConnectionString := dstXML.ConnectionString;

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

        rtn := GetISyncWeb.SendMessage(wsMessage);

        if  rtn = '' then
        begin
          qryWMMessage.SQL.Text := 'exec dbo.sync_set_wsmessageout_status ''' +
            wsMessage.EventObject + ''',''' + wsMessage.PkEventObject +
            ''',''' + wsMessage.DestinationLocation + ''',''SSV''';
          qryWMMessage.ExecSQL;
        end
      end
      else
    except
      on e : exception do
      begin

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
        dstLeaves.Open;
        while (Sender as TCheckBox).Checked do
        begin
          Sleep(200);

          SyncLeave;
          TThread.Synchronize(nil,
            procedure
            begin
              lblUpdate.Caption := 'Last update at ' + FormatDateTime('mmm dd yyyy hh:mm:ss',Now);
              lblRecordsRemaining.Caption := 'Records remaining: ' + IntToStr(dstLeaves.RecordCount);
            end
            );

          dstLeaves.Requery;
        end;
      end
    );
end;

procedure TfrmSyncClientWebMain.SynchronizeToServerClick(Sender: TObject);
begin
  TTask.Run(
      procedure
      begin
        dstLeaves.Open;
        while (Sender as TCheckBox).Checked do
        begin
          Sleep(300);

          SendMessage;

          TThread.Synchronize(nil,
            procedure
            begin
              lblSyncServerUpdate.Caption := 'Last message sent: ' + FormatDateTime('mm-dd-yyyy hh:mm:ss am/pm',Now);
            end
            );

          dstLeaves.Requery;
        end;
      end
    );
end;

procedure TfrmSyncClientWebMain.SyncLeave;
var
  eventObject,pkEventObject,sourceLocation, sql: string;
begin
  try
    with dstLeaves do
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
