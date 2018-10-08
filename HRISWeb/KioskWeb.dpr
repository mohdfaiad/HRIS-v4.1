program KioskWeb;

uses
  Forms,
  ServerModule in 'ServerModule.pas' {UniServerModule: TUniGUIServerModule},
  MainModule in 'MainModule.pas' {UniMainModule: TUniGUIMainModule},
  WebMain in 'WebMain.pas' {WebMainForm: TUniForm},
  WebLogin in 'WebLogin.pas' {LoginForm: TUniLoginForm},
  WebDashboard in 'WebDashboard.pas' {DashboardFrame: TUniFrame};

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := True;
  Application.Initialize;
  TUniServerModule.Create(Application);
  Application.Run;
end.
