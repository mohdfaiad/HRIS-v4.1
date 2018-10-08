unit WebLeaveMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniPanel, uniGUIBaseClasses, uniBasicGrid,
  uniStringGrid, LeaveController, uniMultiItem, uniComboBox, uniLabel;

type
  TCellDate = class
  strict private
    FDate: TDateTime;
  public
    property Date: TDateTime read FDate write FDate;
  end;

  TLeaveMainFrame = class(TUniFrame)
    grCalendar1: TUniStringGrid;
    pnlHeader1: TUniPanel;
    YearCombo: TUniComboBox;
    grCalendar2: TUniStringGrid;
    pnlHeader2: TUniPanel;
    grCalendar3: TUniStringGrid;
    pnlHeader3: TUniPanel;
    grCalendar4: TUniStringGrid;
    pnlHeader4: TUniPanel;
    grCalendar5: TUniStringGrid;
    pnlHeader5: TUniPanel;
    grCalendar6: TUniStringGrid;
    pnlHeader6: TUniPanel;
    grCalendar7: TUniStringGrid;
    pnlHeader7: TUniPanel;
    grCalendar8: TUniStringGrid;
    pnlHeader8: TUniPanel;
    grCalendar9: TUniStringGrid;
    pnlHeader9: TUniPanel;
    grCalendar10: TUniStringGrid;
    pnlHeader10: TUniPanel;
    grCalendar11: TUniStringGrid;
    pnlHeader11: TUniPanel;
    grCalendar12: TUniStringGrid;
    pnlHeader12: TUniPanel;
    UniLabel1: TUniLabel;
    UniLabel2: TUniLabel;
    UniLabel3: TUniLabel;
    UniLabel4: TUniLabel;
    LeaveCreditsLabel: TUniLabel;
    LeavesAvailedLabel: TUniLabel;
    LeavesRemainingLabel: TUniLabel;
    UniPanel1: TUniPanel;
    UniPanel2: TUniPanel;
    UniLabel5: TUniLabel;
    HeaderPanel: TUniSimplePanel;
    UniPanel3: TUniPanel;
    UniLabel6: TUniLabel;
    LeavesAvailedUnpaidLabel: TUniLabel;
    UniLabel7: TUniLabel;
    BusinessTripsLabel: TUniLabel;
    procedure grCalendar1DrawCell(Sender: TObject; ACol, ARow: Integer;
      var Value: string; Attribs: TUniCellAttribs);
    procedure UniFrameCreate(Sender: TObject);
    procedure YearComboSelect(Sender: TObject);
    procedure UniFrameDestroy(Sender: TObject);
    procedure grCalendar1DblClick(Sender: TObject);
  private
    { Private declarations }
    FController: TLeaveController;
    procedure InitCalendar;
    procedure PopulateCalendar;
    procedure RefreshFrame;
    procedure UpdateTotals;
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses
  Leave, AttendanceUtils, HRISGlobal, DateUtils, Employee, MainModule;

procedure TLeaveMainFrame.grCalendar1DblClick(Sender: TObject);
var
  LGrid: TUniStringGrid;
  LRow,LColumn: integer;
  LCellDate: TCellDate;
begin
  LGrid := Sender as TUniStringGrid;
  LRow := LGrid.Row;
  LColumn := LGrid.Col;

  with LGrid do
  begin
    if Assigned(Objects[LColumn,LRow]) then
    begin
      if Objects[LColumn,LRow] is TCellDate then
      begin
        LCellDate := Objects[LColumn,LRow] as TCellDate;
        FController.DisplayLeaveDetails(LCellDate.Date);
      end;
    end;
  end;
end;

procedure TLeaveMainFrame.grCalendar1DrawCell(Sender: TObject; ACol,
  ARow: Integer; var Value: string; Attribs: TUniCellAttribs);
var
  LCellDate: TCellDate;
  LGrid: TUniStringGrid;
begin
  try
    LGrid := (Sender as TUniStringGrid);
    with LGrid do
    begin

      //Brush.Color := clWindow;

      //Font.Size := 7;
      //Font.Style := [];
      //Font.Color := clBlack;

      // change colour of cells depending on status
      if Assigned(Objects[ACol,ARow]) then
      begin
        if Objects[ACol,ARow] is TCellDate then
        begin
          LCellDate := (Objects[ACol,ARow] as TCellDate);
          FController.Render(Attribs,LCellDate.Date);
        end;
      end;

      if ACol = 6 then
      begin
        Attribs.Color := $00F7F7F7;
        Attribs.Font.Color := clRed;
      end;

    end;

  except
    on E: Exception do ShowMessage('Check error at date ' + DateToStr(LCellDate.Date));
  end;
end;

procedure TLeaveMainFrame.InitCalendar;
var
  i, LRow, LCol: integer;
  LGrid: TUniStringGrid;
  LHeader: TUniPanel;
  selectedYear: string;
  cellObject: TCellDate;
begin
  selectedYear := YearCombo.Text;

  // clear the calendars
  for i := 1 to CALENDARS do
  begin
    // change header caption
    LHeader := FindComponent('pnlHeader' + IntToStr(i)) as TUniPanel;
    case i of
      1: LHeader.Caption := 'January ' + selectedYear;
      2: LHeader.Caption := 'February ' + selectedYear;
      3: LHeader.Caption := 'March ' + selectedYear;
      4: LHeader.Caption := 'April ' + selectedYear;
      5: LHeader.Caption := 'May ' + selectedYear;
      6: LHeader.Caption := 'June ' + selectedYear;
      7: LHeader.Caption := 'July ' + selectedYear;
      8: LHeader.Caption := 'August ' + selectedYear;
      9: LHeader.Caption := 'September ' + selectedYear;
      10: LHeader.Caption := 'October ' + selectedYear;
      11: LHeader.Caption := 'November ' + selectedYear;
      12: LHeader.Caption := 'December ' + selectedYear;
    end;

    LGrid := FindComponent('grCalendar' + IntToStr(i)) as TUniStringGrid;

    try
      for LRow := 0 to LGrid.RowCount - 1 do
        for LCol := 0 to LGrid.ColCount - 1 do
        begin
          LGrid.Cells[LCol,LRow] := '';

          if Assigned(LGrid.Objects[LCol,LRow]) then
          begin
            if LGrid.Objects[LCol,LRow] is TCellDate then
            begin
              cellObject := LGrid.Objects[LCol,LRow] as TCellDate;
              if Assigned(cellObject) then FreeAndNil(cellObject)
            end;
          end;
        end;
    except
      on E: Exception do ShowMessage('Calendar ' + IntToStr(i) + ' Not TCellDate: ROW ' + IntToStr(LRow) + ' COL ' + IntToStr(LCol));
    end;
  end;
end;

procedure TLeaveMainFrame.PopulateCalendar;
const
  DAYS_IN_A_WEEK = 7;
var
  i, LRow, LCol: integer;
  mm, dd, yy, selectedYear: word;
  LGrid: TUniStringGrid;
  LCellDate: TCellDate;
  startDate, dt: TDateTime;
begin
  InitCalendar;

  selectedYear := StrToInt(YearCombo.Text);

  startDate := EncodeDate(selectedYear,1,1);

  for i := 0 to DaysInAYear(selectedYear) - 1 do
  begin
    dt := IncDay(startDate,i);

    DecodeDate(dt, yy, mm, dd);

    LGrid := FindComponent('grCalendar' + IntToStr(mm)) as TUniStringGrid;

    with LGrid do
    begin
      // find column and row
      // Note: first column is Monday
      if dd = 1 then
      begin
        LCol := DayOfTheWeek(dt) - 1;
        LRow := 0;
      end
      else
      begin
        if LCol = DAYS_IN_A_WEEK - 1 then
        begin
          LCol := 0;
          Inc(LRow);
        end
        else Inc(LCol);
      end;

      // display the day
      Cells[LCol,LRow] := IntToStr(DayOf(dt));

      LCellDate := TCellDate.Create;
      LCellDate.Date := dt;

      Objects[LCol,LRow] := LCellDate;
    end;
  end;
end;
procedure TLeaveMainFrame.RefreshFrame;
begin

end;

procedure TLeaveMainFrame.UniFrameCreate(Sender: TObject);
var
  fd, td: TDate;
  LEmployee: TEmployee;
begin
  inherited;
  PopulateYear(YearCombo);

  LEmployee := TEmployee.Create;
  LEmployee.IdNumber := UniMainModule.User.UserId;
  LEmployee.FirstName := UniMainModule.User.FirstName;

  FController := TLeaveController.Create;
  FController.Employee := LEmployee;
  FController.OnUpdate := RefreshFrame;

  GetDateParamsYear(StrToInt(YearCombo.Text),fd,td);

  FController.StartDate := fd;
  FController.EndDate := td;
  FController.Retrieve;

  PopulateCalendar;

  UpdateTotals;
end;

procedure TLeaveMainFrame.UniFrameDestroy(Sender: TObject);
var
  i, LRow, LCol: integer;
  LGrid: TUniStringGrid;
  cellObject: TCellDate;
begin

  // clear the calendars
  for i := 1 to CALENDARS do
  begin

    LGrid := FindComponent('grCalendar' + IntToStr(i)) as TUniStringGrid;

    for LRow := 0 to LGrid.RowCount - 1 do
      for LCol := 0 to LGrid.ColCount - 1 do
      begin
        if Assigned(LGrid.Objects[LCol,LRow]) then
        begin
          if LGrid.Objects[LCol,LRow] is TCellDate then
          begin
            cellObject := LGrid.Objects[LCol,LRow] as TCellDate;
            FreeAndNil(cellObject);
          end
          else ShowMessage('Calendar ' + IntToStr(i) + ' Not TCellDate: ROW ' + IntToStr(LRow) + ' COL ' + IntToStr(LCol));
        end;
        // else ShowMessage('Calendar ' + IntToStr(i) + ' Not assigned: ROW ' + IntToStr(LRow) + ' COL ' + IntToStr(LCol));
      end

  end;

  FController.Free;
end;

procedure TLeaveMainFrame.UpdateTotals;
begin
  LeaveCreditsLabel.Caption := FormatFloat('0.0000',FController.TotalLeaveCredits);
  LeavesAvailedLabel.Caption := FormatFloat('0.0000',FController.TotalLeavesAvailed);
  LeavesRemainingLabel.Caption := FormatFloat('0.0000',FController.TotalLeavesRemaining);

  LeavesAvailedUnpaidLabel.Caption := FormatFloat('0.0000',FController.TotalLeaveAvailedUnpaid);
  BusinessTripsLabel.Caption := FormatFloat('0.0000',FController.TotalBusinessTrips);
end;

procedure TLeaveMainFrame.YearComboSelect(Sender: TObject);
var
  fd, td: TDate;
begin
  inherited;
  GetDateParamsYear(StrToInt(YearCombo.Text),fd,td);

  FController.StartDate := fd;
  FController.EndDate := td;
  FController.Retrieve;

  PopulateCalendar;
end;

end.
