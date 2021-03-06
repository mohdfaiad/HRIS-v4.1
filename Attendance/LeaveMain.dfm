inherited frmLeaveMain: TfrmLeaveMain
  Caption = 'frmLeaveMain'
  ClientHeight = 553
  ClientWidth = 1160
  OnCreate = FormCreate
  ExplicitWidth = 1176
  ExplicitHeight = 592
  PixelsPerInch = 96
  TextHeight = 14
  object RzLabel1: TRzLabel [0]
    Left = 29
    Top = 56
    Width = 25
    Height = 14
    Caption = 'Year'
  end
  object RzLabel18: TRzLabel [1]
    Left = 166
    Top = 56
    Width = 53
    Height = 14
    Caption = 'Employee'
  end
  object lblLeaveCredits: TRzLabel [2]
    Left = 134
    Top = 424
    Width = 60
    Height = 20
    Alignment = taRightJustify
    AutoSize = False
    Caption = '-'
    Color = clMenu
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object lblPaidLeaves: TRzLabel [3]
    Left = 135
    Top = 454
    Width = 60
    Height = 20
    Alignment = taRightJustify
    AutoSize = False
    Caption = '-'
    Color = clMenu
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object lblLeaveBalance: TRzLabel [4]
    Left = 135
    Top = 484
    Width = 60
    Height = 20
    Alignment = taRightJustify
    AutoSize = False
    Caption = '-'
    Color = clMenu
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object RzLabel2: TRzLabel [5]
    Left = 29
    Top = 424
    Width = 72
    Height = 14
    Caption = 'Leave credits'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object RzLabel3: TRzLabel [6]
    Left = 30
    Top = 454
    Width = 59
    Height = 14
    Caption = 'Paid leaves'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object RzLabel4: TRzLabel [7]
    Left = 30
    Top = 484
    Width = 77
    Height = 14
    Caption = 'Leave balance'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object shLeave: TShape [8]
    Left = 955
    Top = 425
    Width = 12
    Height = 12
    Brush.Color = clMoneyGreen
    Pen.Style = psClear
  end
  object RzLabel7: TRzLabel [9]
    Left = 973
    Top = 463
    Width = 67
    Height = 14
    Caption = 'Business trip'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object shBusinessTrip: TShape [10]
    Left = 955
    Top = 464
    Width = 12
    Height = 12
    Brush.Color = 11783167
    Pen.Style = psClear
  end
  object RzLabel8: TRzLabel [11]
    Left = 973
    Top = 424
    Width = 22
    Height = 14
    Caption = 'Paid'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Shape1: TShape [12]
    Left = 955
    Top = 444
    Width = 12
    Height = 12
    Brush.Color = 6711039
    Pen.Style = psClear
  end
  object RzLabel5: TRzLabel [13]
    Left = 973
    Top = 443
    Width = 37
    Height = 14
    Caption = 'Unpaid'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lblUnpaidLeaves: TRzLabel [14]
    Left = 350
    Top = 424
    Width = 60
    Height = 20
    Alignment = taRightJustify
    AutoSize = False
    Caption = '-'
    Color = clMenu
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object lblBusinessTrips: TRzLabel [15]
    Left = 351
    Top = 454
    Width = 60
    Height = 20
    Alignment = taRightJustify
    AutoSize = False
    Caption = '-'
    Color = clMenu
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object RzLabel10: TRzLabel [16]
    Left = 245
    Top = 424
    Width = 74
    Height = 14
    Caption = 'Unpaid leaves'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object RzLabel11: TRzLabel [17]
    Left = 246
    Top = 454
    Width = 72
    Height = 14
    Caption = 'Business trips'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  inherited pnlTitle: TRzPanel
    Width = 1160
    ExplicitWidth = 1160
    inherited lblTitle: TRzLabel
      Width = 157
      Caption = 'Leaves and Business Trips'
      ExplicitWidth = 157
    end
  end
  object pnlCalendar1: TRzPanel
    Left = 28
    Top = 91
    Width = 169
    Height = 145
    BorderOuter = fsNone
    BorderColor = 12961221
    BorderWidth = 1
    Color = 15395562
    TabOrder = 1
    object pnlCalendarHeader1: TRzPanel
      Left = 1
      Top = 1
      Width = 167
      Height = 24
      Align = alTop
      BorderOuter = fsNone
      BorderSides = [sdBottom]
      BorderColor = 12961221
      BorderWidth = 1
      Caption = 'January 2018'
      Color = 15395562
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clTeal
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object grCalendar1: TRzStringGrid
      Tag = 1
      Left = 1
      Top = 25
      Width = 167
      Height = 119
      Align = alClient
      BevelEdges = [beLeft, beTop]
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      Color = clWhite
      ColCount = 7
      Ctl3D = True
      DefaultColWidth = 23
      DefaultRowHeight = 23
      DefaultDrawing = False
      DrawingStyle = gdsGradient
      FixedColor = 12961221
      FixedCols = 0
      FixedRows = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      GradientStartColor = 917503
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine]
      ParentCtl3D = False
      ParentFont = False
      ScrollBars = ssNone
      TabOrder = 1
      OnDrawCell = grCalendar1DrawCell
      OnEnter = grCalendar1Enter
      OnExit = grCalendar1Exit
      FixedLineColor = 12961221
      LineColor = 12961221
      UseDrawingStyle = False
      ColWidths = (
        23
        23
        23
        23
        23
        23
        23)
      RowHeights = (
        23
        23
        23
        23
        23)
    end
  end
  object RzPanel1: TRzPanel
    Left = 213
    Top = 91
    Width = 169
    Height = 145
    BorderOuter = fsNone
    BorderColor = 12961221
    BorderWidth = 1
    Color = 14932430
    TabOrder = 2
    object grCalendar2: TRzStringGrid
      Tag = 2
      Left = 1
      Top = 25
      Width = 167
      Height = 119
      Align = alClient
      BevelEdges = [beLeft, beTop]
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      Color = clWhite
      ColCount = 7
      Ctl3D = True
      DefaultColWidth = 23
      DefaultRowHeight = 23
      DefaultDrawing = False
      DrawingStyle = gdsGradient
      FixedColor = 12961221
      FixedCols = 0
      FixedRows = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      GradientStartColor = 917503
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine]
      ParentCtl3D = False
      ParentFont = False
      ScrollBars = ssNone
      TabOrder = 0
      OnDrawCell = grCalendar1DrawCell
      OnEnter = grCalendar1Enter
      OnExit = grCalendar1Exit
      FixedLineColor = 12961221
      LineColor = 12961221
      UseDrawingStyle = False
      ColWidths = (
        23
        23
        23
        23
        23
        23
        23)
      RowHeights = (
        23
        23
        23
        23
        23)
    end
    object pnlCalendarHeader2: TRzPanel
      Left = 1
      Top = 1
      Width = 167
      Height = 24
      Align = alTop
      BorderOuter = fsNone
      BorderSides = [sdBottom]
      BorderColor = 12961221
      BorderWidth = 1
      Caption = 'February 2018'
      Color = 15395562
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clTeal
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
  end
  object RzPanel3: TRzPanel
    Left = 398
    Top = 91
    Width = 169
    Height = 145
    BorderOuter = fsNone
    BorderColor = 12961221
    BorderWidth = 1
    Color = 14932430
    TabOrder = 3
    object grCalendar3: TRzStringGrid
      Tag = 3
      Left = 1
      Top = 25
      Width = 167
      Height = 119
      Align = alClient
      BevelEdges = [beLeft, beTop]
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      Color = clWhite
      ColCount = 7
      Ctl3D = True
      DefaultColWidth = 23
      DefaultRowHeight = 23
      DefaultDrawing = False
      DrawingStyle = gdsGradient
      FixedColor = 12961221
      FixedCols = 0
      FixedRows = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      GradientStartColor = 917503
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine]
      ParentCtl3D = False
      ParentFont = False
      ScrollBars = ssNone
      TabOrder = 0
      OnDrawCell = grCalendar1DrawCell
      OnEnter = grCalendar1Enter
      OnExit = grCalendar1Exit
      FixedLineColor = 12961221
      LineColor = 12961221
      UseDrawingStyle = False
      ColWidths = (
        23
        23
        23
        23
        23
        23
        23)
      RowHeights = (
        23
        23
        23
        23
        23)
    end
    object pnlCalendarHeader3: TRzPanel
      Left = 1
      Top = 1
      Width = 167
      Height = 24
      Align = alTop
      BorderOuter = fsNone
      BorderSides = [sdBottom]
      BorderColor = 12961221
      BorderWidth = 1
      Caption = 'March 2018'
      Color = 15395562
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clTeal
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
  end
  object RzPanel5: TRzPanel
    Left = 583
    Top = 91
    Width = 169
    Height = 145
    BorderOuter = fsNone
    BorderColor = 12961221
    BorderWidth = 1
    Color = 14932430
    TabOrder = 4
    object grCalendar4: TRzStringGrid
      Tag = 4
      Left = 1
      Top = 25
      Width = 167
      Height = 119
      Align = alClient
      BevelEdges = [beLeft, beTop]
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      Color = clWhite
      ColCount = 7
      Ctl3D = True
      DefaultColWidth = 23
      DefaultRowHeight = 23
      DefaultDrawing = False
      DrawingStyle = gdsGradient
      FixedColor = 12961221
      FixedCols = 0
      FixedRows = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      GradientStartColor = 917503
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine]
      ParentCtl3D = False
      ParentFont = False
      ScrollBars = ssNone
      TabOrder = 0
      OnDrawCell = grCalendar1DrawCell
      OnEnter = grCalendar1Enter
      OnExit = grCalendar1Exit
      FixedLineColor = 12961221
      LineColor = 12961221
      UseDrawingStyle = False
      ColWidths = (
        23
        23
        23
        23
        23
        23
        23)
      RowHeights = (
        23
        23
        23
        23
        23)
    end
    object pnlCalendarHeader4: TRzPanel
      Left = 1
      Top = 1
      Width = 167
      Height = 24
      Align = alTop
      BorderOuter = fsNone
      BorderSides = [sdBottom]
      BorderColor = 12961221
      BorderWidth = 1
      Caption = 'April 2018'
      Color = 15395562
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clTeal
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
  end
  object RzPanel7: TRzPanel
    Left = 768
    Top = 91
    Width = 169
    Height = 145
    BorderOuter = fsNone
    BorderColor = 12961221
    BorderWidth = 1
    Color = 14932430
    TabOrder = 5
    object grCalendar5: TRzStringGrid
      Tag = 5
      Left = 1
      Top = 25
      Width = 167
      Height = 119
      Align = alClient
      BevelEdges = [beLeft, beTop]
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      Color = clWhite
      ColCount = 7
      Ctl3D = True
      DefaultColWidth = 23
      DefaultRowHeight = 23
      DefaultDrawing = False
      DrawingStyle = gdsGradient
      FixedColor = 12961221
      FixedCols = 0
      FixedRows = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      GradientStartColor = 917503
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine]
      ParentCtl3D = False
      ParentFont = False
      ScrollBars = ssNone
      TabOrder = 0
      OnDrawCell = grCalendar1DrawCell
      OnEnter = grCalendar1Enter
      OnExit = grCalendar1Exit
      FixedLineColor = 12961221
      LineColor = 12961221
      UseDrawingStyle = False
      ColWidths = (
        23
        23
        23
        23
        23
        23
        23)
      RowHeights = (
        23
        23
        23
        23
        23)
    end
    object pnlCalendarHeader5: TRzPanel
      Left = 1
      Top = 1
      Width = 167
      Height = 24
      Align = alTop
      BorderOuter = fsNone
      BorderSides = [sdBottom]
      BorderColor = 12961221
      BorderWidth = 1
      Caption = 'May 2018'
      Color = 15395562
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clTeal
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
  end
  object RzPanel9: TRzPanel
    Left = 953
    Top = 91
    Width = 169
    Height = 145
    BorderOuter = fsNone
    BorderColor = 12961221
    BorderWidth = 1
    Color = 14932430
    TabOrder = 6
    object grCalendar6: TRzStringGrid
      Tag = 6
      Left = 1
      Top = 25
      Width = 167
      Height = 119
      Align = alClient
      BevelEdges = [beLeft, beTop]
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      Color = clWhite
      ColCount = 7
      Ctl3D = True
      DefaultColWidth = 23
      DefaultRowHeight = 23
      DefaultDrawing = False
      DrawingStyle = gdsGradient
      FixedColor = 12961221
      FixedCols = 0
      FixedRows = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      GradientStartColor = 917503
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine]
      ParentCtl3D = False
      ParentFont = False
      ScrollBars = ssNone
      TabOrder = 0
      OnDrawCell = grCalendar1DrawCell
      OnEnter = grCalendar1Enter
      OnExit = grCalendar1Exit
      FixedLineColor = 12961221
      LineColor = 12961221
      UseDrawingStyle = False
      ColWidths = (
        23
        23
        23
        23
        23
        23
        23)
      RowHeights = (
        23
        23
        23
        23
        23)
    end
    object pnlCalendarHeader6: TRzPanel
      Left = 1
      Top = 1
      Width = 167
      Height = 24
      Align = alTop
      BorderOuter = fsNone
      BorderSides = [sdBottom]
      BorderColor = 12961221
      BorderWidth = 1
      Caption = 'June 2018'
      Color = 15395562
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clTeal
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
  end
  object RzPanel11: TRzPanel
    Left = 28
    Top = 252
    Width = 169
    Height = 145
    BorderOuter = fsNone
    BorderColor = 12961221
    BorderWidth = 1
    Color = 14932430
    TabOrder = 7
    object grCalendar7: TRzStringGrid
      Tag = 7
      Left = 1
      Top = 25
      Width = 167
      Height = 119
      Align = alClient
      BevelEdges = [beLeft, beTop]
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      Color = clWhite
      ColCount = 7
      Ctl3D = True
      DefaultColWidth = 23
      DefaultRowHeight = 23
      DefaultDrawing = False
      DrawingStyle = gdsGradient
      FixedColor = 12961221
      FixedCols = 0
      FixedRows = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      GradientStartColor = 917503
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine]
      ParentCtl3D = False
      ParentFont = False
      ScrollBars = ssNone
      TabOrder = 0
      OnDrawCell = grCalendar1DrawCell
      OnEnter = grCalendar1Enter
      OnExit = grCalendar1Exit
      FixedLineColor = 12961221
      LineColor = 12961221
      UseDrawingStyle = False
      ColWidths = (
        23
        23
        23
        23
        23
        23
        23)
      RowHeights = (
        23
        23
        23
        23
        23)
    end
    object pnlCalendarHeader7: TRzPanel
      Left = 1
      Top = 1
      Width = 167
      Height = 24
      Align = alTop
      BorderOuter = fsNone
      BorderSides = [sdBottom]
      BorderColor = 12961221
      BorderWidth = 1
      Caption = 'July 2018'
      Color = 15395562
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clTeal
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
  end
  object RzPanel13: TRzPanel
    Left = 213
    Top = 252
    Width = 169
    Height = 145
    BorderOuter = fsNone
    BorderColor = 12961221
    BorderWidth = 1
    Color = 14932430
    TabOrder = 8
    object grCalendar8: TRzStringGrid
      Tag = 8
      Left = 1
      Top = 25
      Width = 167
      Height = 119
      Align = alClient
      BevelEdges = [beLeft, beTop]
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      Color = clWhite
      ColCount = 7
      Ctl3D = True
      DefaultColWidth = 23
      DefaultRowHeight = 23
      DefaultDrawing = False
      DrawingStyle = gdsGradient
      FixedColor = 12961221
      FixedCols = 0
      FixedRows = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      GradientStartColor = 917503
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine]
      ParentCtl3D = False
      ParentFont = False
      ScrollBars = ssNone
      TabOrder = 0
      OnDrawCell = grCalendar1DrawCell
      OnEnter = grCalendar1Enter
      OnExit = grCalendar1Exit
      FixedLineColor = 12961221
      LineColor = 12961221
      UseDrawingStyle = False
      ColWidths = (
        23
        23
        23
        23
        23
        23
        23)
      RowHeights = (
        23
        23
        23
        23
        23)
    end
    object pnlCalendarHeader8: TRzPanel
      Left = 1
      Top = 1
      Width = 167
      Height = 24
      Align = alTop
      BorderOuter = fsNone
      BorderSides = [sdBottom]
      BorderColor = 12961221
      BorderWidth = 1
      Caption = 'August 2018'
      Color = 15395562
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clTeal
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
  end
  object RzPanel15: TRzPanel
    Left = 398
    Top = 252
    Width = 169
    Height = 145
    BorderOuter = fsNone
    BorderColor = 12961221
    BorderWidth = 1
    Color = 14932430
    TabOrder = 9
    object grCalendar9: TRzStringGrid
      Tag = 9
      Left = 1
      Top = 25
      Width = 167
      Height = 119
      Align = alClient
      BevelEdges = [beLeft, beTop]
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      Color = clWhite
      ColCount = 7
      Ctl3D = True
      DefaultColWidth = 23
      DefaultRowHeight = 23
      DefaultDrawing = False
      DrawingStyle = gdsGradient
      FixedColor = 12961221
      FixedCols = 0
      FixedRows = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      GradientStartColor = 917503
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine]
      ParentCtl3D = False
      ParentFont = False
      ScrollBars = ssNone
      TabOrder = 0
      OnDrawCell = grCalendar1DrawCell
      OnEnter = grCalendar1Enter
      OnExit = grCalendar1Exit
      FixedLineColor = 12961221
      LineColor = 12961221
      UseDrawingStyle = False
      ColWidths = (
        23
        23
        23
        23
        23
        23
        23)
      RowHeights = (
        23
        23
        23
        23
        23)
    end
    object pnlCalendarHeader9: TRzPanel
      Left = 1
      Top = 1
      Width = 167
      Height = 24
      Align = alTop
      BorderOuter = fsNone
      BorderSides = [sdBottom]
      BorderColor = 12961221
      BorderWidth = 1
      Caption = 'September 2018'
      Color = 15395562
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clTeal
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
  end
  object RzPanel17: TRzPanel
    Left = 583
    Top = 252
    Width = 169
    Height = 145
    BorderOuter = fsNone
    BorderColor = 12961221
    BorderWidth = 1
    Color = 14932430
    TabOrder = 10
    object grCalendar10: TRzStringGrid
      Tag = 10
      Left = 1
      Top = 25
      Width = 167
      Height = 119
      Align = alClient
      BevelEdges = [beLeft, beTop]
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      Color = clWhite
      ColCount = 7
      Ctl3D = True
      DefaultColWidth = 23
      DefaultRowHeight = 23
      DefaultDrawing = False
      DrawingStyle = gdsGradient
      FixedColor = 12961221
      FixedCols = 0
      FixedRows = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      GradientStartColor = 917503
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine]
      ParentCtl3D = False
      ParentFont = False
      ScrollBars = ssNone
      TabOrder = 0
      OnDrawCell = grCalendar1DrawCell
      OnEnter = grCalendar1Enter
      OnExit = grCalendar1Exit
      FixedLineColor = 12961221
      LineColor = 12961221
      UseDrawingStyle = False
      ColWidths = (
        23
        23
        23
        23
        23
        23
        23)
      RowHeights = (
        23
        23
        23
        23
        23)
    end
    object pnlCalendarHeader10: TRzPanel
      Left = 1
      Top = 1
      Width = 167
      Height = 24
      Align = alTop
      BorderOuter = fsNone
      BorderSides = [sdBottom]
      BorderColor = 12961221
      BorderWidth = 1
      Caption = 'October 2018'
      Color = 15395562
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clTeal
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
  end
  object RzPanel19: TRzPanel
    Left = 768
    Top = 252
    Width = 169
    Height = 145
    BorderOuter = fsNone
    BorderColor = 12961221
    BorderWidth = 1
    Color = 14932430
    TabOrder = 11
    object grCalendar11: TRzStringGrid
      Tag = 11
      Left = 1
      Top = 25
      Width = 167
      Height = 119
      Align = alClient
      BevelEdges = [beLeft, beTop]
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      Color = clWhite
      ColCount = 7
      Ctl3D = True
      DefaultColWidth = 23
      DefaultRowHeight = 23
      DefaultDrawing = False
      DrawingStyle = gdsGradient
      FixedColor = 12961221
      FixedCols = 0
      FixedRows = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      GradientStartColor = 917503
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine]
      ParentCtl3D = False
      ParentFont = False
      ScrollBars = ssNone
      TabOrder = 0
      OnDrawCell = grCalendar1DrawCell
      OnEnter = grCalendar1Enter
      OnExit = grCalendar1Exit
      FixedLineColor = 12961221
      LineColor = 12961221
      UseDrawingStyle = False
      ColWidths = (
        23
        23
        23
        23
        23
        23
        23)
      RowHeights = (
        23
        23
        23
        23
        23)
    end
    object pnlCalendarHeader11: TRzPanel
      Left = 1
      Top = 1
      Width = 167
      Height = 24
      Align = alTop
      BorderOuter = fsNone
      BorderSides = [sdBottom]
      BorderColor = 12961221
      BorderWidth = 1
      Caption = 'November 2018'
      Color = 15395562
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clTeal
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
  end
  object RzPanel21: TRzPanel
    Left = 953
    Top = 252
    Width = 169
    Height = 145
    BorderOuter = fsNone
    BorderColor = 12961221
    BorderWidth = 1
    Color = 14932430
    TabOrder = 12
    object grCalendar12: TRzStringGrid
      Tag = 12
      Left = 1
      Top = 25
      Width = 167
      Height = 119
      Align = alClient
      BevelEdges = [beLeft, beTop]
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      Color = clWhite
      ColCount = 7
      Ctl3D = True
      DefaultColWidth = 23
      DefaultRowHeight = 23
      DefaultDrawing = False
      DrawingStyle = gdsGradient
      FixedColor = 12961221
      FixedCols = 0
      FixedRows = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      GradientStartColor = 917503
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine]
      ParentCtl3D = False
      ParentFont = False
      ScrollBars = ssNone
      TabOrder = 0
      OnDrawCell = grCalendar1DrawCell
      OnEnter = grCalendar1Enter
      OnExit = grCalendar1Exit
      FixedLineColor = 12961221
      LineColor = 12961221
      UseDrawingStyle = False
      ColWidths = (
        23
        23
        23
        23
        23
        23
        23)
      RowHeights = (
        23
        23
        23
        23
        23)
    end
    object pnlCalendarHeader12: TRzPanel
      Left = 1
      Top = 1
      Width = 167
      Height = 24
      Align = alTop
      BorderOuter = fsNone
      BorderSides = [sdBottom]
      BorderColor = 12961221
      BorderWidth = 1
      Caption = 'December 2018'
      Color = 15395562
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clTeal
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
  end
  object cmbYear: TRzComboBox
    Left = 61
    Top = 50
    Width = 87
    Height = 22
    AutoCloseUp = True
    Ctl3D = False
    FlatButtonColor = 14273211
    FrameColor = 12961221
    FrameHotStyle = fsFlat
    FrameVisible = True
    FramingPreference = fpCustomFraming
    ParentCtl3D = False
    TabOrder = 13
    OnChange = cmbYearChange
  end
  object edEmployee: TRzButtonEdit
    Left = 238
    Top = 50
    Width = 248
    Height = 22
    Text = ''
    Color = clInfoBk
    FrameColor = 13816530
    FrameVisible = True
    FramingPreference = fpCustomFraming
    ReadOnly = True
    TabOrder = 14
    AltBtnKind = bkReject
    ButtonKind = bkFind
    AltBtnWidth = 15
    ButtonWidth = 15
    FlatButtons = True
    HideButtonsOnReadOnly = False
    OnButtonClick = edEmployeeButtonClick
  end
end
