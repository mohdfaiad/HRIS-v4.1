object EmployeeDrawerFrame: TEmployeeDrawerFrame
  Left = 0
  Top = 0
  Width = 992
  Height = 580
  OnCreate = UniFrameCreate
  OnDestroy = UniFrameDestroy
  Align = alClient
  Anchors = [akLeft, akTop, akRight, akBottom]
  TabOrder = 0
  ExplicitWidth = 451
  ExplicitHeight = 305
  object MenuPanel: TUniSimplePanel
    Left = 0
    Top = 89
    Width = 200
    Height = 491
    Hint = ''
    ParentColor = False
    Color = 16250871
    Align = alLeft
    AlignmentControl = uniAlignmentClient
    ParentAlignmentControl = False
    TabOrder = 0
    ExplicitTop = 0
    ExplicitHeight = 305
    object MainLabel: TUniLabel
      Left = 41
      Top = 26
      Width = 28
      Height = 16
      Cursor = crHandPoint
      Hint = ''
      Caption = 'Main'
      ParentFont = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clTeal
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsUnderline]
      TabOrder = 1
      OnClick = MainLabelClick
    end
    object AddressAndContactLabel: TUniLabel
      Left = 41
      Top = 58
      Width = 120
      Height = 16
      Cursor = crHandPoint
      Hint = ''
      Caption = 'Address and contact'
      ParentFont = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clTeal
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsUnderline]
      TabOrder = 2
      OnClick = AddressAndContactLabelClick
    end
    object FamilyAndRelativesLabel: TUniLabel
      Left = 41
      Top = 90
      Width = 115
      Height = 16
      Cursor = crHandPoint
      Hint = ''
      Caption = 'Family and relatives'
      ParentFont = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clTeal
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsUnderline]
      TabOrder = 3
      OnClick = FamilyAndRelativesLabelClick
    end
    object PafRecordsLabel: TUniLabel
      Left = 41
      Top = 122
      Width = 72
      Height = 16
      Cursor = crHandPoint
      Hint = ''
      Caption = 'PAF records'
      ParentFont = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clTeal
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsUnderline]
      TabOrder = 4
    end
  end
  object DockPanel: TUniSimplePanel
    Left = 200
    Top = 89
    Width = 792
    Height = 491
    Hint = ''
    ParentColor = False
    Color = clWhite
    Align = alClient
    AlignmentControl = uniAlignmentClient
    ParentAlignmentControl = False
    TabOrder = 1
    ExplicitTop = 0
    ExplicitWidth = 251
    ExplicitHeight = 305
  end
  object HeaderPanel: TUniSimplePanel
    Left = 0
    Top = 0
    Width = 992
    Height = 89
    Hint = ''
    ParentColor = False
    Color = clTeal
    Align = alTop
    AlignmentControl = uniAlignmentClient
    ParentAlignmentControl = False
    TabOrder = 2
    ExplicitLeft = -685
    ExplicitWidth = 1677
    object UniLabel5: TUniLabel
      Left = 56
      Top = 27
      Width = 313
      Height = 39
      Hint = ''
      Caption = 'Employee Information'
      ParentFont = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -32
      TabOrder = 1
    end
  end
end
