object LeaveMainFrame: TLeaveMainFrame
  Left = 0
  Top = 0
  Width = 1625
  Height = 684
  OnCreate = UniFrameCreate
  Color = clWhite
  Font.Charset = ANSI_CHARSET
  Font.Height = -12
  TabOrder = 0
  ParentColor = False
  ParentFont = False
  ParentBackground = False
  object grCalendar1: TUniStringGrid
    Left = 56
    Top = 88
    Width = 246
    Height = 107
    Hint = ''
    FixedCols = 0
    FixedRows = 0
    ColCount = 7
    DefaultColWidth = 35
    DefaultRowHeight = 25
    Options = [goVertLine, goHorzLine]
    Columns = <>
    ClientEvents.UniEvents.Strings = (
      
        'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.scro' +
        'll = false'#13#10'}')
    OnDrawCell = grCalendar1DrawCell
    TabOrder = 0
    ParentFont = False
    Font.Charset = ANSI_CHARSET
    Font.Height = -12
  end
  object pnlHeader1: TUniPanel
    Left = 56
    Top = 64
    Width = 246
    Height = 25
    Hint = ''
    ParentFont = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clTeal
    Font.Height = -12
    Font.Style = [fsBold]
    TabOrder = 1
    Caption = 'January 2018'
    Color = 16250871
  end
  object YearCombo: TUniComboBox
    Left = 98
    Top = 20
    Width = 145
    Height = 24
    Hint = ''
    Text = 'YearCombo'
    TabOrder = 2
    ForceSelection = False
    OnSelect = YearComboSelect
  end
  object grCalendar2: TUniStringGrid
    Left = 320
    Top = 88
    Width = 246
    Height = 107
    Hint = ''
    FixedCols = 0
    FixedRows = 0
    ColCount = 7
    DefaultColWidth = 35
    DefaultRowHeight = 35
    Options = [goVertLine, goHorzLine]
    Columns = <>
    ClientEvents.UniEvents.Strings = (
      
        'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.scro' +
        'll = false'#13#10'}')
    OnDrawCell = grCalendar1DrawCell
    TrackOver = True
    TabOrder = 3
    ParentFont = False
    Font.Charset = ANSI_CHARSET
  end
  object pnlHeader2: TUniPanel
    Left = 320
    Top = 64
    Width = 246
    Height = 25
    Hint = ''
    ParentFont = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clTeal
    Font.Height = -12
    Font.Style = [fsBold]
    TabOrder = 4
    Caption = 'February 2018'
    Color = 16250871
  end
  object grCalendar3: TUniStringGrid
    Left = 584
    Top = 88
    Width = 246
    Height = 107
    Hint = ''
    FixedCols = 0
    FixedRows = 0
    ColCount = 7
    DefaultColWidth = 35
    DefaultRowHeight = 25
    Options = [goVertLine, goHorzLine]
    Columns = <>
    ClientEvents.UniEvents.Strings = (
      
        'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.scro' +
        'll = false'#13#10'}')
    OnDrawCell = grCalendar1DrawCell
    TabOrder = 5
    ParentFont = False
    Font.Charset = ANSI_CHARSET
    Font.Height = -12
  end
  object pnlHeader3: TUniPanel
    Left = 584
    Top = 64
    Width = 246
    Height = 25
    Hint = ''
    ParentFont = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clTeal
    Font.Height = -12
    Font.Style = [fsBold]
    TabOrder = 6
    Caption = 'March 2018'
    Color = 16250871
  end
  object grCalendar4: TUniStringGrid
    Left = 848
    Top = 88
    Width = 246
    Height = 107
    Hint = ''
    FixedCols = 0
    FixedRows = 0
    ColCount = 7
    DefaultColWidth = 35
    DefaultRowHeight = 25
    Options = [goVertLine, goHorzLine]
    Columns = <>
    ClientEvents.UniEvents.Strings = (
      
        'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.scro' +
        'll = false'#13#10'}')
    OnDrawCell = grCalendar1DrawCell
    TabOrder = 7
    ParentFont = False
    Font.Charset = ANSI_CHARSET
    Font.Height = -12
  end
  object pnlHeader4: TUniPanel
    Left = 848
    Top = 64
    Width = 246
    Height = 25
    Hint = ''
    ParentFont = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clTeal
    Font.Height = -12
    Font.Style = [fsBold]
    TabOrder = 8
    Caption = 'April 2018'
    Color = 16250871
  end
  object grCalendar5: TUniStringGrid
    Left = 1112
    Top = 88
    Width = 246
    Height = 107
    Hint = ''
    FixedCols = 0
    FixedRows = 0
    ColCount = 7
    DefaultColWidth = 35
    DefaultRowHeight = 25
    Options = [goVertLine, goHorzLine]
    Columns = <>
    ClientEvents.UniEvents.Strings = (
      
        'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.scro' +
        'll = false'#13#10'}')
    OnDrawCell = grCalendar1DrawCell
    TabOrder = 9
    ParentFont = False
    Font.Charset = ANSI_CHARSET
    Font.Height = -12
  end
  object pnlHeader5: TUniPanel
    Left = 1112
    Top = 64
    Width = 246
    Height = 25
    Hint = ''
    ParentFont = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clTeal
    Font.Height = -12
    Font.Style = [fsBold]
    TabOrder = 10
    Caption = 'May 2018'
    Color = 16250871
  end
  object grCalendar6: TUniStringGrid
    Left = 1376
    Top = 88
    Width = 246
    Height = 107
    Hint = ''
    FixedCols = 0
    FixedRows = 0
    ColCount = 7
    DefaultColWidth = 35
    DefaultRowHeight = 25
    Options = [goVertLine, goHorzLine]
    Columns = <>
    ClientEvents.UniEvents.Strings = (
      
        'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.scro' +
        'll = false'#13#10'}')
    OnDrawCell = grCalendar1DrawCell
    TabOrder = 11
    ParentFont = False
    Font.Charset = ANSI_CHARSET
    Font.Height = -12
  end
  object pnlHeader6: TUniPanel
    Left = 1376
    Top = 64
    Width = 246
    Height = 25
    Hint = ''
    ParentFont = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clTeal
    Font.Height = -12
    Font.Style = [fsBold]
    TabOrder = 12
    Caption = 'June 2018'
    Color = 16250871
  end
  object grCalendar7: TUniStringGrid
    Left = 56
    Top = 256
    Width = 246
    Height = 107
    Hint = ''
    FixedCols = 0
    FixedRows = 0
    ColCount = 7
    DefaultColWidth = 35
    DefaultRowHeight = 25
    Options = [goVertLine, goHorzLine]
    Columns = <>
    ClientEvents.UniEvents.Strings = (
      
        'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.scro' +
        'll = false'#13#10'}')
    OnDrawCell = grCalendar1DrawCell
    TabOrder = 13
    ParentFont = False
    Font.Charset = ANSI_CHARSET
    Font.Height = -12
  end
  object pnlHeader7: TUniPanel
    Left = 56
    Top = 232
    Width = 246
    Height = 25
    Hint = ''
    ParentFont = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clTeal
    Font.Height = -12
    Font.Style = [fsBold]
    TabOrder = 14
    Caption = 'July 2018'
    Color = 16250871
  end
  object grCalendar8: TUniStringGrid
    Left = 320
    Top = 256
    Width = 246
    Height = 107
    Hint = ''
    FixedCols = 0
    FixedRows = 0
    ColCount = 7
    DefaultColWidth = 35
    DefaultRowHeight = 25
    Options = [goVertLine, goHorzLine]
    Columns = <>
    ClientEvents.UniEvents.Strings = (
      
        'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.scro' +
        'll = false'#13#10'}')
    OnDrawCell = grCalendar1DrawCell
    TabOrder = 15
    ParentFont = False
    Font.Charset = ANSI_CHARSET
    Font.Height = -12
  end
  object pnlHeader8: TUniPanel
    Left = 320
    Top = 232
    Width = 246
    Height = 25
    Hint = ''
    ParentFont = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clTeal
    Font.Height = -12
    Font.Style = [fsBold]
    TabOrder = 16
    Caption = 'August 2018'
    Color = 16250871
  end
  object grCalendar9: TUniStringGrid
    Left = 584
    Top = 256
    Width = 246
    Height = 107
    Hint = ''
    FixedCols = 0
    FixedRows = 0
    ColCount = 7
    DefaultColWidth = 35
    DefaultRowHeight = 25
    Options = [goVertLine, goHorzLine]
    Columns = <>
    ClientEvents.UniEvents.Strings = (
      
        'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.scro' +
        'll = false'#13#10'}')
    OnDrawCell = grCalendar1DrawCell
    TabOrder = 17
    ParentFont = False
    Font.Charset = ANSI_CHARSET
    Font.Height = -12
  end
  object pnlHeader9: TUniPanel
    Left = 584
    Top = 232
    Width = 246
    Height = 25
    Hint = ''
    ParentFont = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clTeal
    Font.Height = -12
    Font.Style = [fsBold]
    TabOrder = 18
    Caption = 'September 2018'
    Color = 16250871
  end
  object grCalendar10: TUniStringGrid
    Left = 848
    Top = 256
    Width = 246
    Height = 107
    Hint = ''
    FixedCols = 0
    FixedRows = 0
    ColCount = 7
    DefaultColWidth = 35
    DefaultRowHeight = 25
    Options = [goVertLine, goHorzLine]
    Columns = <>
    ClientEvents.UniEvents.Strings = (
      
        'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.scro' +
        'll = false'#13#10'}')
    OnDrawCell = grCalendar1DrawCell
    TabOrder = 19
    ParentFont = False
    Font.Charset = ANSI_CHARSET
    Font.Height = -12
  end
  object pnlHeader10: TUniPanel
    Left = 848
    Top = 232
    Width = 246
    Height = 25
    Hint = ''
    ParentFont = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clTeal
    Font.Height = -12
    Font.Style = [fsBold]
    TabOrder = 20
    Caption = 'October 2018'
    Color = 16250871
  end
  object grCalendar11: TUniStringGrid
    Left = 1112
    Top = 256
    Width = 246
    Height = 107
    Hint = ''
    FixedCols = 0
    FixedRows = 0
    ColCount = 7
    DefaultColWidth = 35
    DefaultRowHeight = 25
    Options = [goVertLine, goHorzLine]
    Columns = <>
    ClientEvents.UniEvents.Strings = (
      
        'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.scro' +
        'll = false'#13#10'}')
    OnDrawCell = grCalendar1DrawCell
    TabOrder = 21
    ParentFont = False
    Font.Charset = ANSI_CHARSET
    Font.Height = -12
  end
  object pnlHeader11: TUniPanel
    Left = 1112
    Top = 232
    Width = 246
    Height = 25
    Hint = ''
    ParentFont = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clTeal
    Font.Height = -12
    Font.Style = [fsBold]
    TabOrder = 22
    Caption = 'November 2018'
    Color = 16250871
  end
  object grCalendar12: TUniStringGrid
    Left = 1376
    Top = 256
    Width = 246
    Height = 107
    Hint = ''
    FixedCols = 0
    FixedRows = 0
    ColCount = 7
    DefaultColWidth = 35
    DefaultRowHeight = 25
    Options = [goVertLine, goHorzLine]
    Columns = <>
    ClientEvents.UniEvents.Strings = (
      
        'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.scro' +
        'll = false'#13#10'}')
    OnDrawCell = grCalendar1DrawCell
    TabOrder = 23
    ParentFont = False
    Font.Charset = ANSI_CHARSET
    Font.Height = -12
  end
  object pnlHeader12: TUniPanel
    Left = 1376
    Top = 232
    Width = 246
    Height = 25
    Hint = ''
    ParentFont = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clTeal
    Font.Height = -12
    Font.Style = [fsBold]
    TabOrder = 24
    Caption = 'December 2018'
    Color = 16250871
  end
  object UniLabel1: TUniLabel
    Left = 56
    Top = 26
    Width = 25
    Height = 14
    Hint = ''
    Caption = 'Year'
    TabOrder = 25
  end
end
