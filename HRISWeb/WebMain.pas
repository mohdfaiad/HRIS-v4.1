unit WebMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniLabel, uniGUIBaseClasses,
  uniPanel, uniGUIFrame, Vcl.Imaging.pngimage, uniImage;

type
  TWebFrames = (frEmployeeDrawer,frLeaves,frForApproval,frDashboard);

  TWebMainForm = class(TUniForm)
    DockPanel: TUniPanel;
    lblWelcomeUser: TUniLabel;
    UniSimplePanel1: TUniSimplePanel;
    pnlProfile: TUniSimplePanel;
    imgProfile: TUniImage;
    pnlLeaves: TUniSimplePanel;
    imgLeaves: TUniImage;
    UniSimplePanel2: TUniSimplePanel;
    imgLogout: TUniImage;
    UniLabel2: TUniLabel;
    pnlForApproval: TUniSimplePanel;
    imgForApproval: TUniImage;
    pnlDashboard: TUniSimplePanel;
    imgDashboard: TUniImage;
    procedure UniFormAfterShow(Sender: TObject);
    procedure imgProfileClick(Sender: TObject);
    procedure imgLogoutClick(Sender: TObject);
    procedure imgLeavesClick(Sender: TObject);
    procedure imgForApprovalClick(Sender: TObject);
    procedure imgDashboardClick(Sender: TObject);
  private
    { Private declarations }
    procedure DockFrame(frame: TWebFrames);
  public
    { Public declarations }
  end;

function WebMainForm: TWebMainForm;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication, WebEmployeeDrawer, WebLeaveMain,
  WebForApproval, WebDashboard;

function WebMainForm: TWebMainForm;
begin
  Result := TWebMainForm(UniMainModule.GetFormInstance(TWebMainForm));
end;

procedure TWebMainForm.DockFrame(frame: TWebFrames);
var
  LFrame: TUniFrame;
begin
  // clear the dock panel
  if DockPanel.ControlCount <> 0 then (DockPanel.Controls[0] as TUniFrame).Free;

  case frame of
    frEmployeeDrawer: LFrame := TEmployeeDrawerFrame.Create(self);
    frLeaves: LFrame := TLeaveMainFrame.Create(self);
    frForApproval: LFrame := TForApprovalFrame.Create(self);
    frDashboard: LFrame := TDashboardFrame.Create(self);
  end;

  // dock the new frame
  LFrame.Parent := DockPanel;
  LFrame.Show;
end;

procedure TWebMainForm.imgDashboardClick(Sender: TObject);
begin
  DockFrame(frDashboard);
end;

procedure TWebMainForm.imgForApprovalClick(Sender: TObject);
begin
  DockFrame(frForApproval);
end;

procedure TWebMainForm.imgLeavesClick(Sender: TObject);
begin
  DockFrame(frLeaves);
end;

procedure TWebMainForm.imgLogoutClick(Sender: TObject);
begin
  Close;
end;

procedure TWebMainForm.imgProfileClick(Sender: TObject);
begin
  DockFrame(frEmployeeDrawer);
end;

procedure TWebMainForm.UniFormAfterShow(Sender: TObject);
begin
  lblWelcomeUser.Caption := 'Welcome back ' + UniMainModule.User.Name2;

  // dock the dashboard
  DockFrame(frDashboard);
end;

initialization
  RegisterAppFormClass(TWebMainForm);

end.
