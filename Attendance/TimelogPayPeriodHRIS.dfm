inherited frmTimelogPayPeriodHRIS: TfrmTimelogPayPeriodHRIS
  Caption = 'frmTimelogPayPeriodHRIS'
  Color = clMenu
  PixelsPerInch = 96
  TextHeight = 14
  inherited lblStatus: TRzLabel
    Left = 842
    ExplicitLeft = 842
  end
  inherited lblSwitchView: TRzLabel
    Font.Color = 8026685
    Visible = False
  end
  inherited pnlTitle: TRzPanel
    BorderColor = 12961221
    Color = 15395562
    GradientColorStart = 15395562
    GradientColorStop = 15395562
    inherited lblTitle: TRzLabel
      Font.Color = 8026685
    end
    inherited lblNext: TLabel
      Font.Color = 8026685
    end
    inherited lblPrevious: TLabel
      Font.Color = 8026685
    end
  end
  inherited cmbPeriod: TRzComboBox
    Ctl3D = False
    DisabledColor = clMenu
    FrameColor = 13816530
  end
  inherited pnlCalendar: TRzPanel
    inherited grCalendar: TRzStringGrid
      Color = clMenu
      FixedColor = 15066597
      Font.Color = clGray
      ParentColor = False
      FixedLineColor = 12961221
    end
  end
  inherited bteFilter: TRzButtonEdit
    DisabledColor = clMenu
    FrameColor = 13816530
  end
end