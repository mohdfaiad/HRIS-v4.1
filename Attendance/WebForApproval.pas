unit WebForApproval;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniLabel, uniGUIBaseClasses, uniPanel,
  uniBasicGrid, uniDBGrid;

type
  TForApprovalFrame = class(TUniFrame)
    HeaderPanel: TUniSimplePanel;
    UniLabel5: TUniLabel;
    ListGrid: TUniDBGrid;
    procedure UniFrameDestroy(Sender: TObject);
    procedure UniFrameCreate(Sender: TObject);
    procedure ListGridColumnSort(Column: TUniDBGridColumn; Direction: Boolean);
  private
    { Private declarations }
    procedure SortColumn(const FieldName: string; Dir: Boolean);
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses
  MainModule, ADODB;

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
end;

procedure TForApprovalFrame.UniFrameDestroy(Sender: TObject);
begin
  ListGrid.DataSource.DataSet.Close;
end;

end.
