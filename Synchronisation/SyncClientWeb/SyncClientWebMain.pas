unit SyncClientWebMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TfrmSyncClientWebMain = class(TForm)
    ConnectionMain: TADOConnection;
    Sychronize: TCheckBox;
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
    procedure ConnectionMainBeforeConnect(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SychronizeClick(Sender: TObject);
    procedure ConnectionHRISBeforeConnect(Sender: TObject);
    procedure btnSkipRecordClick(Sender: TObject);
  private
    { Private declarations }
    procedure SyncLeave;
    procedure MarkSkip;
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

procedure TfrmSyncClientWebMain.SychronizeClick(Sender: TObject);
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
