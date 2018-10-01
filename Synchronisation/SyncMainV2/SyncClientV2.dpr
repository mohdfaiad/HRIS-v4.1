program SyncClientV2;

uses
  Vcl.Forms,
  SyncClientMain in 'SyncClientMain.pas' {frmSyncClientMain};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmSyncClientMain, frmSyncClientMain);
  Application.Run;
end.
