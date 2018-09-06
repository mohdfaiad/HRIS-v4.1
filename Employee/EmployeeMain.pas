unit EmployeeMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseForm, Vcl.StdCtrls, Vcl.Mask,
  RzEdit, RzDBEdit, Vcl.ExtCtrls, RzPanel, Vcl.DBCtrls,
  RzButton, RzRadChk, RzDBChk, RzDBCmbo, RzCmboBx, Employee;

type
  TfrmEmployeeMain = class(TfrmBase)
    RzGroupBox2: TRzGroupBox;
    edMiddlename: TRzDBEdit;
    edFirstname: TRzDBEdit;
    edLastname: TRzDBEdit;
    RzGroupBox1: TRzGroupBox;
    edIdNum: TRzDBEdit;
    RzDBDateTimeEdit1: TRzDBDateTimeEdit;
    RzDBMemo1: TRzDBMemo;
    RzDBDateTimeEdit2: TRzDBDateTimeEdit;
    RzGroupBox3: TRzGroupBox;
    RzDBEdit6: TRzDBEdit;
    RzDBEdit7: TRzDBEdit;
    RzGroupBox4: TRzGroupBox;
    RzDBEdit8: TRzDBEdit;
    RzDBEdit9: TRzDBEdit;
    RzDBEdit10: TRzDBEdit;
    RzDBEdit11: TRzDBEdit;
    RzDBEdit12: TRzDBEdit;
    RzDBCheckBox1: TRzDBCheckBox;
    RzDBLookupComboBox2: TRzDBLookupComboBox;
    RzDBLookupComboBox3: TRzDBLookupComboBox;
    RzDBLookupComboBox4: TRzDBLookupComboBox;
    RzDBLookupComboBox1: TRzDBLookupComboBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    lblAge: TLabel;
    lblHeight: TLabel;
    lblWeight: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    FEmployee: TEmployee;
    procedure SetCaptions;
    procedure RefreshForm;
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); overload; override;
    constructor Create(AOwner: TComponent; const AEmployee: TEmployee); reintroduce; overload;
  end;

implementation

{$R *.dfm}

uses
  EmployeeData, FormsUtil;

constructor TfrmEmployeeMain.Create(AOwner: TComponent);
begin
  inherited;
end;

constructor TfrmEmployeeMain.Create(AOwner: TComponent;
  const AEmployee: TEmployee);
begin
  inherited Create(AOwner);
  FEmployee := AEmployee;
  FEmployee.OnUpdate := RefreshForm;

  RefreshForm;
end;

procedure TfrmEmployeeMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  OpenDropdownDataSources(self,false);
  FEmployee.OnUpdate := nil;
end;

procedure TfrmEmployeeMain.FormCreate(Sender: TObject);
begin
  inherited;
  OpenDropdownDataSources(self);
end;

procedure TfrmEmployeeMain.FormShow(Sender: TObject);
begin
  inherited;
  SetCaptions;
end;

procedure TfrmEmployeeMain.SetCaptions;
begin
  if Assigned(FEmployee) then
  begin
    lblAge.Caption := 'Age: ' + IntToStr(FEmployee.Age);
    lblHeight.Caption := FEmployee.HeightInFeetAndInches;
    lblWeight.Caption := FEmployee.WeightInKilos;
  end;
end;

procedure TfrmEmployeeMain.RefreshForm;
begin
  SetCaptions;
  edIdNum.ReadOnly := FEmployee.IdNumber <> '';
end;

end.
