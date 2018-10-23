unit WebForApproval;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniLabel, uniGUIBaseClasses, uniPanel,
  uniBasicGrid, uniDBGrid, System.Actions, Vcl.ActnList, uniButton,
  uniMultiItem, uniComboBox, System.Generics.Collections, PayrollCode;

type
  TForApprovalFrame = class(TUniFrame)
    HeaderPanel: TUniSimplePanel;
    UniLabel5: TUniLabel;
    ListGrid: TUniDBGrid;
    LeaveActionList: TActionList;
    ActionApprove: TAction;
    ActionDisapprove: TAction;
    ApproveButton: TUniButton;
    DisapproveButton: TUniButton;
    UniLabel7: TUniLabel;
    PeriodCombo: TUniComboBox;
    UpdateButton: TUniButton;
    procedure UniFrameDestroy(Sender: TObject);
    procedure UniFrameCreate(Sender: TObject);
    procedure ListGridColumnSort(Column: TUniDBGridColumn; Direction: Boolean);
    procedure ActionApproveExecute(Sender: TObject);
    procedure ActionDisapproveExecute(Sender: TObject);
    procedure ApproveButtonClick(Sender: TObject);
    procedure DisapproveButtonClick(Sender: TObject);
    procedure UpdateButtonClick(Sender: TObject);
  private
    { Private declarations }
    FCodeList: TObjectList<TPayrollCode>;
    procedure SortColumn(const FieldName: string; Dir: Boolean);
    procedure PopulatePeriodCombo;
    procedure RetrieveEntitlements;
    procedure DestroyComboObjects;
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses
  MainModule, ADODB, WebLeaveIntf;

procedure TForApprovalFrame.ActionApproveExecute(Sender: TObject);
var
  intf: IWebLeave;
begin
  if Supports(UniMainModule,IWebLeave,intf) then intf.ApproveLeave;
end;

procedure TForApprovalFrame.ActionDisapproveExecute(Sender: TObject);
var
  intf: IWebLeave;
begin
  if Supports(UniMainModule,IWebLeave,intf) then intf.DisapproveLeave;
end;

procedure TForApprovalFrame.ApproveButtonClick(Sender: TObject);
var
  intf: IWebLeave;
begin
  if Supports(UniMainModule,IWebLeave,intf) then intf.ApproveLeave;
end;

procedure TForApprovalFrame.DestroyComboObjects;
{var
  code: TObject;
  i: integer;}
begin
  {with PeriodCombo do
  begin
    i := 0;
    while i < Items.Count - 1 do
    begin
      code := Items.Objects[i];
      if Assigned(code) then FreeAndNil(code);
      Inc(i);
    end;
  end; }

  FCodeList.Free;
end;

procedure TForApprovalFrame.DisapproveButtonClick(Sender: TObject);
var
  intf: IWebLeave;
begin
  if Supports(UniMainModule,IWebLeave,intf) then intf.DisapproveLeave;
end;

procedure TForApprovalFrame.ListGridColumnSort(Column: TUniDBGridColumn;
  Direction: Boolean);
begin
  // SortColumn(Column.FieldName, Direction);
end;

procedure TForApprovalFrame.PopulatePeriodCombo;
var
  intf: IWebLeave;
  code: TPayrollCode;
begin
  if Supports(UniMainModule,IWebLeave,intf) then
    FCodeList := intf.GetPayrollCodes;

  PeriodCombo.Clear;
  for code in FCodeList do
    PeriodCombo.Items.AddObject(code.Period,code);

  PeriodCombo.ItemIndex := 0;

  // codeList.Free;
end;

procedure TForApprovalFrame.RetrieveEntitlements;
var
  code: TPayrollCode;
  intf: IWebLeave;
begin
  if Supports(UniMainModule,IWebLeave,intf) then
  begin
    code := PeriodCombo.Items.Objects[PeriodCombo.ItemIndex] as TPayrollCode;
    intf.RetrievePendingEntitlements(code);
  end;
end;

procedure TForApprovalFrame.SortColumn(const FieldName: string; Dir: Boolean);
begin
  with (ListGrid.DataSource.DataSet as TADODataSet) do
  begin
    if Dir then IndexName := FieldName + '_index_asc'
    else IndexName := FieldName + '_index_des';
  end;
end;

procedure TForApprovalFrame.UniFrameCreate(Sender: TObject);
begin
  PopulatePeriodCombo;

  RetrieveEntitlements;

  // set access
  ApproveButton.Enabled := UniMainModule.User.HasRights(['LEAVE_APPROVE']);
  DisapproveButton.Enabled := UniMainModule.User.HasRights(['LEAVE_DISAPPROVE']);
end;

procedure TForApprovalFrame.UniFrameDestroy(Sender: TObject);
begin
  ListGrid.DataSource.DataSet.Close;
  DestroyComboObjects;
end;

procedure TForApprovalFrame.UpdateButtonClick(Sender: TObject);
begin
  RetrieveEntitlements;
end;

end.
