inherited frmLeaveCredits: TfrmLeaveCredits
  Caption = 'frmLeaveCredits'
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 14
  inherited pnlList: TRzPanel
    Top = 65
    Height = 403
    ExplicitTop = 65
    ExplicitHeight = 403
    inherited grList: TRzDBGrid
      Height = 401
      DataSource = dmLeave.dscLeaveCredits
      OnTitleClick = grListTitleClick
      Columns = <
        item
          Expanded = False
          FieldName = 'id_num'
          Title.Caption = 'ID No.'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -12
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'employee'
          Title.Caption = 'Employee'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -12
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 250
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'leave_credits'
          Title.Caption = 'Credits'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -12
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 60
          Visible = True
        end>
    end
  end
  inherited pnlSearch: TRzPanel
    Top = 28
    ExplicitTop = 28
  end
  inherited pnlDetail: TRzPanel
    Top = 37
    Height = 431
    ExplicitTop = 37
    ExplicitHeight = 431
    object Label2: TLabel [0]
      Left = 27
      Top = 24
      Width = 53
      Height = 14
      Caption = 'Employee'
    end
    object Label3: TLabel [1]
      Left = 27
      Top = 76
      Width = 37
      Height = 14
      Caption = 'Credits'
    end
    inherited pnlAdd: TRzPanel
      Top = 401
      Visible = False
      ExplicitTop = 401
    end
    object edEmployee: TRzDBEdit
      Left = 27
      Top = 42
      Width = 224
      Height = 22
      DataSource = dmLeave.dscLeaveCredits
      DataField = 'employee'
      ReadOnly = True
      Color = clInfoBk
      Ctl3D = True
      FrameColor = 13816530
      FrameVisible = True
      FramingPreference = fpCustomFraming
      ParentCtl3D = False
      TabOnEnter = True
      TabOrder = 1
    end
    object edCredits: TRzDBEdit
      Left = 27
      Top = 94
      Width = 78
      Height = 22
      DataSource = dmLeave.dscLeaveCredits
      DataField = 'leave_credits'
      FrameColor = 13816530
      FrameVisible = True
      FramingPreference = fpCustomFraming
      ReadOnlyColor = clWhite
      TabOnEnter = True
      TabOrder = 2
    end
  end
  object RzPanel1: TRzPanel
    Left = 0
    Top = 0
    Width = 778
    Height = 28
    Align = alTop
    BorderOuter = fsNone
    BorderSides = [sdBottom]
    BorderColor = 12961221
    BorderWidth = 1
    Color = 15395562
    GradientColorStyle = gcsCustom
    GradientColorStart = 14932430
    GradientColorStop = 14932430
    TabOrder = 4
    VisualStyle = vsClassic
    object RzLabel1: TRzLabel
      Left = 8
      Top = 7
      Width = 86
      Height = 14
      Caption = 'Leaves credits'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8026685
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      BorderSides = [sdBottom]
    end
  end
end
