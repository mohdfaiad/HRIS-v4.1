unit WebDashboard;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniLabel, uniGUIBaseClasses, uniPanel,
  uniBasicGrid, uniDBGrid;

type
  TDashboardFrame = class(TUniFrame)
    HeaderPanel: TUniSimplePanel;
    UniLabel5: TUniLabel;
    UniLabel1: TUniLabel;
    PendingListGrid: TUniDBGrid;
    UniLabel2: TUniLabel;
    ApprovedListGrid: TUniDBGrid;
    procedure UniFrameCreate(Sender: TObject);
    procedure UniFrameDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses MainModule;



procedure TDashboardFrame.UniFrameCreate(Sender: TObject);
begin
  PendingListGrid.DataSource.DataSet.Open;
  ApprovedListGrid.DataSource.DataSet.Open;
end;

procedure TDashboardFrame.UniFrameDestroy(Sender: TObject);
begin
  PendingListGrid.DataSource.DataSet.Close;
  ApprovedListGrid.DataSource.DataSet.Close;
end;

end.
