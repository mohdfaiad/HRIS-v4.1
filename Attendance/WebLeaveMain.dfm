object LeaveMainFrame: TLeaveMainFrame
  Left = 0
  Top = 0
  Width = 1677
  Height = 816
  OnCreate = UniFrameCreate
  Color = clWhite
  Align = alClient
  Anchors = [akLeft, akTop, akRight, akBottom]
  Font.Charset = ANSI_CHARSET
  Font.Height = -12
  TabOrder = 0
  ParentColor = False
  ParentFont = False
  ParentBackground = False
  object grCalendar1: TUniStringGrid
    Left = 56
    Top = 176
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
    TrackOver = True
    TabOrder = 0
    ParentFont = False
    Font.Charset = ANSI_CHARSET
    Font.Height = -12
  end
  object pnlHeader1: TUniPanel
    Left = 56
    Top = 152
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
    Left = 97
    Top = 650
    Width = 145
    Height = 24
    Hint = ''
    Enabled = False
    Visible = False
    Text = 'YearCombo'
    TabOrder = 2
    ForceSelection = False
    OnSelect = YearComboSelect
  end
  object grCalendar2: TUniStringGrid
    Left = 320
    Top = 176
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
    Top = 152
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
    Top = 176
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
    TrackOver = True
    TabOrder = 5
    ParentFont = False
    Font.Charset = ANSI_CHARSET
    Font.Height = -12
  end
  object pnlHeader3: TUniPanel
    Left = 584
    Top = 152
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
    Top = 176
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
    TrackOver = True
    TabOrder = 7
    ParentFont = False
    Font.Charset = ANSI_CHARSET
    Font.Height = -12
  end
  object pnlHeader4: TUniPanel
    Left = 848
    Top = 152
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
    Top = 176
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
    TrackOver = True
    TabOrder = 9
    ParentFont = False
    Font.Charset = ANSI_CHARSET
    Font.Height = -12
  end
  object pnlHeader5: TUniPanel
    Left = 1112
    Top = 152
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
    Top = 176
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
    TrackOver = True
    TabOrder = 11
    ParentFont = False
    Font.Charset = ANSI_CHARSET
    Font.Height = -12
  end
  object pnlHeader6: TUniPanel
    Left = 1376
    Top = 152
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
    Top = 344
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
    TrackOver = True
    TabOrder = 13
    ParentFont = False
    Font.Charset = ANSI_CHARSET
    Font.Height = -12
  end
  object pnlHeader7: TUniPanel
    Left = 56
    Top = 320
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
    Top = 344
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
    TrackOver = True
    TabOrder = 15
    ParentFont = False
    Font.Charset = ANSI_CHARSET
    Font.Height = -12
  end
  object pnlHeader8: TUniPanel
    Left = 320
    Top = 320
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
    Top = 344
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
    TrackOver = True
    TabOrder = 17
    ParentFont = False
    Font.Charset = ANSI_CHARSET
    Font.Height = -12
  end
  object pnlHeader9: TUniPanel
    Left = 584
    Top = 320
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
    Top = 344
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
    TrackOver = True
    TabOrder = 19
    ParentFont = False
    Font.Charset = ANSI_CHARSET
    Font.Height = -12
  end
  object pnlHeader10: TUniPanel
    Left = 848
    Top = 320
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
    Top = 344
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
    TrackOver = True
    TabOrder = 21
    ParentFont = False
    Font.Charset = ANSI_CHARSET
    Font.Height = -12
  end
  object pnlHeader11: TUniPanel
    Left = 1112
    Top = 320
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
    Top = 344
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
    TrackOver = True
    TabOrder = 23
    ParentFont = False
    Font.Charset = ANSI_CHARSET
    Font.Height = -12
  end
  object pnlHeader12: TUniPanel
    Left = 1376
    Top = 320
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
    Left = 55
    Top = 656
    Width = 25
    Height = 14
    Hint = ''
    Visible = False
    Caption = 'Year'
    TabOrder = 25
  end
  object UniLabel2: TUniLabel
    Left = 97
    Top = 514
    Width = 122
    Height = 25
    Hint = ''
    Caption = 'Leave credits'
    ParentFont = False
    Font.Charset = ANSI_CHARSET
    Font.Color = 10526880
    Font.Height = -21
    TabOrder = 26
  end
  object UniLabel3: TUniLabel
    Left = 85
    Top = 554
    Width = 134
    Height = 25
    Hint = ''
    Caption = 'Leaves availed'
    ParentFont = False
    Font.Charset = ANSI_CHARSET
    Font.Color = 10526880
    Font.Height = -21
    TabOrder = 27
  end
  object UniLabel4: TUniLabel
    Left = 56
    Top = 594
    Width = 163
    Height = 25
    Hint = ''
    Caption = 'Leaves remaining'
    ParentFont = False
    Font.Charset = ANSI_CHARSET
    Font.Color = 10526880
    Font.Height = -21
    TabOrder = 28
  end
  object LeaveCreditsLabel: TUniLabel
    Left = 256
    Top = 514
    Width = 90
    Height = 25
    Hint = ''
    Alignment = taRightJustify
    AutoSize = False
    Caption = '-'
    ParentFont = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -21
    TabOrder = 29
  end
  object LeavesAvailedLabel: TUniLabel
    Left = 256
    Top = 554
    Width = 90
    Height = 25
    Hint = ''
    Alignment = taRightJustify
    AutoSize = False
    Caption = '-'
    ParentFont = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -21
    TabOrder = 30
  end
  object LeavesRemainingLabel: TUniLabel
    Left = 256
    Top = 594
    Width = 90
    Height = 25
    Hint = ''
    Alignment = taRightJustify
    AutoSize = False
    Caption = '-'
    ParentFont = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -21
    TabOrder = 31
  end
  object UniPanel1: TUniPanel
    Left = 1276
    Top = 594
    Width = 101
    Height = 25
    Hint = ''
    ParentFont = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Style = [fsBold]
    TabOrder = 32
    BorderStyle = ubsNone
    Caption = 'Business trip'
    Color = 11783167
  end
  object UniPanel2: TUniPanel
    Left = 1053
    Top = 594
    Width = 101
    Height = 25
    Hint = ''
    ParentFont = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Style = [fsBold]
    TabOrder = 33
    BorderStyle = ubsNone
    Caption = 'Paid'
    Color = clMoneyGreen
  end
  object HeaderPanel: TUniSimplePanel
    Left = 0
    Top = 0
    Width = 1677
    Height = 89
    Hint = ''
    ParentColor = False
    Color = clTeal
    Align = alTop
    AlignmentControl = uniAlignmentClient
    ParentAlignmentControl = False
    TabOrder = 34
    object UniLabel5: TUniLabel
      Left = 56
      Top = 27
      Width = 477
      Height = 39
      Hint = ''
      Caption = 'Employee Leaves / Business Trips'
      ParentFont = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -32
      TabOrder = 1
    end
  end
  object UniPanel3: TUniPanel
    Left = 1164
    Top = 594
    Width = 101
    Height = 25
    Hint = ''
    ParentFont = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Style = [fsBold]
    TabOrder = 35
    BorderStyle = ubsNone
    Caption = 'Unpaid'
    Color = 6711039
  end
end
