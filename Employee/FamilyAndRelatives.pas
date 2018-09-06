unit FamilyAndRelatives;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseForm, Data.DB, Vcl.Grids,
  Vcl.DBGrids, RzDBGrid, Vcl.ExtCtrls, RzPanel, Vcl.StdCtrls, Vcl.Mask, RzEdit,
  RzDBEdit, Vcl.DBCtrls, RzDBCmbo, RzButton, RzRadChk, RzDBChk, EmployeeController;

type
  TfrmFamilyAndRelatives = class(TfrmBase)
    pnlDetail: TRzPanel;
    grSearch: TRzDBGrid;
    edLastname: TRzDBEdit;
    edFirstname: TRzDBEdit;
    edMiddlename: TRzDBEdit;
    RzDBDateTimeEdit2: TRzDBDateTimeEdit;
    RzDBLookupComboBox1: TRzDBLookupComboBox;
    RzDBLookupComboBox2: TRzDBLookupComboBox;
    RzDBCheckBox1: TRzDBCheckBox;
    RzDBCheckBox2: TRzDBCheckBox;
    pnlNew: TRzPanel;
    btnNew: TRzShapeButton;
    pnlCancel: TRzPanel;
    btnCancel: TRzShapeButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure btnNewClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
  private
    { Private declarations }
    Controller: TEmployeeController;
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); overload; override;
    constructor Create(AOwner: TComponent; const AController: TEmployeeController); reintroduce; overload;
  end;

implementation

{$R *.dfm}

uses
  EmployeeData, FormsUtil;

constructor TfrmFamilyAndRelatives.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

procedure TfrmFamilyAndRelatives.btnCancelClick(Sender: TObject);
begin
  inherited;
  Controller.Cancel;
end;

procedure TfrmFamilyAndRelatives.btnNewClick(Sender: TObject);
begin
  inherited;
  Controller.AddDetail;
end;

constructor TfrmFamilyAndRelatives.Create(AOwner: TComponent;
  const AController: TEmployeeController);
begin
  inherited Create(AOwner);
  Controller := AController;
end;

procedure TfrmFamilyAndRelatives.FormCreate(Sender: TObject);
begin
  inherited;
  OpenDropdownDataSources(pnlDetail);
end;

end.
