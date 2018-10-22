unit WebForApproval;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniLabel, uniGUIBaseClasses, uniPanel,
  uniBasicGrid, uniDBGrid, System.Actions, Vcl.ActnList, uniButton;

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
    procedure UniFrameDestroy(Sender: TObject);
    procedure UniFrameCreate(Sender: TObject);
    procedure ListGridColumnSort(Column: TUniDBGridColumn; Direction: Boolean);
    procedure ActionApproveExecute(Sender: TObject);
    procedure ActionDisapproveExecute(Sender: TObject);
    procedure ApproveButtonClick(Sender: TObject);
    procedure DisapproveButtonClick(Sender: TObject);
  private
    { Private declarations }
    procedure SortColumn(const FieldName: string; Dir: Boolean);
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
  ListGrid.DataSource.DataSet.Open;

  // set access
  ApproveButton.Enabled := UniMainModule.User.HasRights(['LEAVE_APPROVE']);
  DisapproveButton.Enabled := UniMainModule.User.HasRights(['LEAVE_DISAPPROVE']);
end;

procedure TForApprovalFrame.UniFrameDestroy(Sender: TObject);
begin
  ListGrid.DataSource.DataSet.Close;
end;

end.
