program SyncClientWeb;

uses
  Vcl.Forms,
  SyncClientWebMain in 'SyncClientWebMain.pas' {frmSyncClientWebMain};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmSyncClientWebMain, frmSyncClientWebMain);
  Application.Run;
end.
