unit LeaveCredits;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseGridDetail, Data.DB, RzButton,
  Vcl.StdCtrls, Vcl.Mask, RzEdit, Vcl.Grids, Vcl.DBGrids, RzDBGrid, RzLabel,
  Vcl.ExtCtrls, RzPanel, SaveIntf, RzDBEdit;

type
  TfrmLeaveCredits = class(TfrmBaseGridDetail)
    Label2: TLabel;
    edEmployee: TRzDBEdit;
    Label3: TLabel;
    edCredits: TRzDBEdit;
    RzPanel1: TRzPanel;
    RzLabel1: TRzLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure grListTitleClick(Column: TColumn);
  private
    { Private declarations }
    FData: TDataModule;
  protected
    procedure SearchList; override;
    procedure BindToObject; override;

    function EntryIsValid: boolean; override;
    function NewIsAllowed: boolean; override;
    function EditIsAllowed: boolean; override;
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); overload; override;
    constructor Create(AOwner: TComponent; AData: TDataModule); reintroduce; overload;
  end;

implementation

{$R *.dfm}

uses
  LeaveData, LeaveDataMethodsIntf, DateUtils, HRISGlobal;

{ TfrmLeaveCredits }

constructor TfrmLeaveCredits.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

procedure TfrmLeaveCredits.BindToObject;
begin
  inherited;

end;

constructor TfrmLeaveCredits.Create(AOwner: TComponent; AData: TDataModule);
begin
  Create(AOwner);
  FData := AData;
end;

function TfrmLeaveCredits.EditIsAllowed: boolean;
begin
  Result := true;
end;

function TfrmLeaveCredits.EntryIsValid: boolean;
begin
  Result := true;
end;

procedure TfrmLeaveCredits.FormCreate(Sender: TObject);
var
  intf: ILeaveDataMethods;
begin
  dmLeave := TdmLeave.Create(self);

  FData := dmLeave;

  if Supports(FData,ILeaveDataMethods,intf) then
    intf.GetLeaveCredits('',YearOf(HRIS.CurrentDate));
end;

procedure TfrmLeaveCredits.FormDestroy(Sender: TObject);
begin
  inherited;
  FreeAndNil(FData);
end;

procedure TfrmLeaveCredits.grListTitleClick(Column: TColumn);
var
  intf: ILeaveDataMethods;
begin
  if Supports(FData,ILeaveDataMethods,intf) then
    intf.Sort(grList.DataSource.DataSet,Column.FieldName);
end;

function TfrmLeaveCredits.NewIsAllowed: boolean;
begin
  Result := false;
end;

procedure TfrmLeaveCredits.SearchList;
var
  filter: string;
begin
  inherited;
  if Trim(edSearchKey.Text) <> '' then
    filter := 'employee like ''*' + edSearchKey.Text + '*'''
  else
    filter := '';

  grList.DataSource.DataSet.Filter := filter;
end;

end.
