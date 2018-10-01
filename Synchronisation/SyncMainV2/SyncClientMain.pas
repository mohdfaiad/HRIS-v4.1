unit SyncClientMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.WinXCtrls;

type
  TfrmSyncClientMain = class(TForm)
    cbxSendMessage: TCheckBox;
    cbxGetMessage: TCheckBox;
    cbxChangeStatus: TCheckBox;
    cbxUpdateStatus: TCheckBox;
    cbxUpdateDb: TCheckBox;
    cbxSendStatus: TCheckBox;
    DBGrid1: TDBGrid;
    lblGetMessage: TLabel;
    procedure cbxGetMessageClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    FLocationCode: string;
    procedure SendClientMessage;
    function GetServerMessage: boolean;
    procedure SetServerMessageStatus;
    procedure GetServerMessageStatus;
  public
    { Public declarations }
  end;

var
  frmSyncClientMain: TfrmSyncClientMain;

implementation

{$R *.dfm}

uses
  IniFiles, SoapHTTPClient, ISyncWebWSDL, SyncWebIntf, ADODB, Log, System.Threading,
  ActiveX, ConnUtil;

{ TfrmSyncClientMain }

procedure TfrmSyncClientMain.cbxGetMessageClick(Sender: TObject);
var
  received: boolean;
begin
  TTask.Run(
      procedure
      begin
        while (Sender as TCheckBox).Checked do
        begin
          received := GetServerMessage;

          TThread.Synchronize(nil,
            procedure
            begin
              if received then
                lblGetMessage.Caption := 'Last message received at: ' + FormatDateTime('mm-dd-yyyy hh:mm:ss am/pm',Now);
            end
            );
        end;
      end
    );
end;

procedure TfrmSyncClientMain.FormCreate(Sender: TObject);
begin
  FLocationCode := 'SVR';
end;

function TfrmSyncClientMain.GetServerMessage: boolean;
var
  path: string;
  dstMessageIn: TADODataSet;
  wsMessage: ISyncWebWSDL.TWSMessage;
  syncService: ISyncWebWSDL.ISyncWeb;
begin
  CoInitialize(nil);

  try
    try
      syncService := GetISyncWeb;

      wsMessage := syncService.GetMessage(FLocationCode);

      path := '';
      //LogSync(TSysConn.Create(path).ConnString, path);
      //LogSync(wsMessage.WSMessage, path);

      dstMessageIn := TADODataSet.Create(nil);
      dstMessageIn.ConnectionString := GetConnection('','','');

      if (wsMessage <> nil) and (wsMessage.WSMessage <> '') then
      begin
        // sql check for duplicates
        dstMessageIn.CommandText :=
          'select * from wsmessagein where ' +
          ' pk_event_object = ''' + wsMessage.PkEventObject + '''' +
          ' and event_object = ''' + wsMessage.EventObject + '''' +
          ' and source_location = ''' + wsMessage.SourceLocation + '''';

        dstMessageIn.Open;

        if dstMessageIn.RecordCount = 0 then
        begin
          dstMessageIn.Append;

          dstMessageIn.FieldByName('event_object').AsString :=
            wsMessage.EventObject;
          dstMessageIn.FieldByName('pk_event_object').AsString :=
            wsMessage.PkEventObject;
          dstMessageIn.FieldByName('ws_message').AsString :=
            wsMessage.WSMessage;
          // dstMessageIn.FieldByName('ws_message_date').AsString :=
          //  FormatDateTime('mm/dd/yyyy',wsMessage.WSMessageDate);
          dstMessageIn.FieldByName('ws_message_date').AsDateTime :=
            wsMessage.WSMessageDate;
          dstMessageIn.FieldByName('source_location').AsString :=
            wsMessage.SourceLocation;
          dstMessageIn.FieldByName('priority').AsInteger :=
            wsMessage.Priority;
          dstMessageIn.FieldByName('messagetype_code').AsString :=
            wsMessage.MessageTypeCode;
          dstMessageIn.FieldByName('messagestatus_code').AsString :=
            wsMessage.MessageStatusCode;

          dstMessageIn.Post;

          LogSync('Message received.', path, true);
        end
        else
          LogSync('Message already exists.', path, true);
      end
      else
        LogSync('Message is empty.', path, true);

      Result := (wsMessage <> nil) and (wsMessage.WSMessage <> '');
    except
      on e : exception do
      begin
        //LogSync('('+ wsMessage.EventObject +
        //  ',' + wsMessage.PkEventObject + '). ' + e.Message, path, true);
        // LogSync(e.Message, path, true);
      end;
    end;
  finally
    //dstMessageIn.Close;
    //dstMessageIn.Free;
    CoUninitialize;
  end;
end;

procedure TfrmSyncClientMain.GetServerMessageStatus;
begin

end;

procedure TfrmSyncClientMain.SendClientMessage;
begin

end;

procedure TfrmSyncClientMain.SetServerMessageStatus;
begin

end;

end.
