unit WebLeaveDetails;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniGUIBaseClasses, uniButton, uniBitBtn,
  uniColorButton, uniLabel, uniPanel, Vcl.Imaging.pngimage, uniImage,
  Leave;

type
  TLeaveDetailsForm = class(TUniForm)
    CloseImage: TUniImage;
    UniLabel1: TUniLabel;
    UniLabel2: TUniLabel;
    UniLabel3: TUniLabel;
    UniLabel4: TUniLabel;
    UniLabel5: TUniLabel;
    UniLabel6: TUniLabel;
    DateLabel: TUniLabel;
    TypeLabel: TUniLabel;
    ReasonLabel: TUniLabel;
    PeriodLabel: TUniLabel;
    PaidLabel: TUniLabel;
    PaidPanel: TUniSimplePanel;
    UniLabel7: TUniLabel;
    RemarksLabel: TUniLabel;
    procedure CloseButtonClick(Sender: TObject);
    procedure CloseImageClick(Sender: TObject);
  private
    { Private declarations }
    FLeave: TEmployeeLeave;
    procedure SetDetails;
  public
    { Public declarations }
    constructor Create(const ALeave: TEmployeeLeave);
  end;

function LeaveDetailsForm: TLeaveDetailsForm;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication;

function LeaveDetailsForm: TLeaveDetailsForm;
begin
  Result := TLeaveDetailsForm(UniMainModule.GetFormInstance(TLeaveDetailsForm));
end;

{ TUniForm1 }

procedure TLeaveDetailsForm.CloseButtonClick(Sender: TObject);
begin
  Close;
end;

procedure TLeaveDetailsForm.CloseImageClick(Sender: TObject);
begin
  Close;
end;

constructor TLeaveDetailsForm.Create(const ALeave: TEmployeeLeave);
begin
  FLeave := ALeave;
  SetDetails;
end;

procedure TLeaveDetailsForm.SetDetails;
begin
  if Assigned(FLeave) then
  begin
    DateLabel.Caption := FormatDateTime('mmm dd, yyyy',FLeave.Date);
    TypeLabel.Caption := FLeave.LeaveTypeName;
    ReasonLabel.Caption := FLeave.Reason;
    PeriodLabel.Caption := FLeave.PeriodDescription;
    RemarksLabel.Caption := FLeave.Remarks;
    PaidLabel.Caption := FLeave.PaidDescription;

    if FLeave.IsPaid then PaidPanel.Color := clGreen
    else PaidPanel.Color := clRed;
  end;
end;

end.
