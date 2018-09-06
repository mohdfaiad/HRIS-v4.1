inherited frmBaseCalendarHRIS: TfrmBaseCalendarHRIS
  Caption = 'frmBaseCalendarHRIS'
  Color = clMenu
  PixelsPerInch = 96
  TextHeight = 14
  inherited pnlTitle: TRzPanel
    BorderColor = 12961221
    Color = 15395562
    GradientColorStart = 15395562
    GradientColorStop = 15395562
    inherited lblTitle: TRzLabel
      Font.Color = 8026685
    end
  end
  inherited cmbPeriod: TRzComboBox
    FrameColor = 12961221
  end
  inherited pnlCalendar: TRzPanel
    inherited grCalendar: TRzStringGrid
      Color = clMenu
      FixedColor = 8026685
      FixedLineColor = 12961221
    end
  end
  inherited bteFilter: TRzButtonEdit
    FrameColor = 12961221
  end
end
