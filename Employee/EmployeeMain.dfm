inherited frmEmployeeMain: TfrmEmployeeMain
  Align = alClient
  Caption = 'frmEmployeeMain'
  ClientHeight = 506
  ClientWidth = 926
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  ExplicitWidth = 942
  ExplicitHeight = 545
  PixelsPerInch = 96
  TextHeight = 14
  object Label1: TLabel
    Left = 59
    Top = 32
    Width = 58
    Height = 14
    Caption = 'ID number'
  end
  object Label2: TLabel
    Left = 59
    Top = 104
    Width = 52
    Height = 14
    Caption = 'Lastname'
  end
  object Label3: TLabel
    Left = 59
    Top = 132
    Width = 52
    Height = 14
    Caption = 'Firstname'
  end
  object Label4: TLabel
    Left = 59
    Top = 160
    Width = 64
    Height = 14
    Caption = 'Middlename'
  end
  object Label5: TLabel
    Left = 427
    Top = 160
    Width = 59
    Height = 14
    Caption = 'Blood type'
  end
  object Label6: TLabel
    Left = 427
    Top = 132
    Width = 40
    Height = 14
    Caption = 'Weight'
  end
  object Label7: TLabel
    Left = 427
    Top = 104
    Width = 36
    Height = 14
    Caption = 'Height'
  end
  object Label8: TLabel
    Left = 427
    Top = 296
    Width = 31
    Height = 14
    Caption = 'HDMF'
  end
  object Label9: TLabel
    Left = 427
    Top = 268
    Width = 21
    Height = 14
    Caption = 'SSS'
  end
  object Label10: TLabel
    Left = 427
    Top = 240
    Width = 20
    Height = 14
    Caption = 'TIN'
  end
  object Label11: TLabel
    Left = 427
    Top = 354
    Width = 83
    Height = 14
    Caption = 'Driver'#39's License'
  end
  object Label12: TLabel
    Left = 427
    Top = 326
    Width = 26
    Height = 14
    Caption = 'PHIC'
  end
  object Label13: TLabel
    Left = 59
    Top = 411
    Width = 74
    Height = 14
    Caption = 'Marriage date'
  end
  object Label14: TLabel
    Left = 59
    Top = 383
    Width = 56
    Height = 14
    Caption = 'Civil status'
  end
  object Label15: TLabel
    Left = 59
    Top = 353
    Width = 41
    Height = 14
    Caption = 'Religion'
  end
  object Label16: TLabel
    Left = 59
    Top = 325
    Width = 40
    Height = 14
    Caption = 'Gender'
  end
  object Label17: TLabel
    Left = 59
    Top = 240
    Width = 50
    Height = 14
    Caption = 'Birthdate'
  end
  object Label18: TLabel
    Left = 59
    Top = 268
    Width = 72
    Height = 14
    Caption = 'Place of birth'
  end
  object lblAge: TLabel
    Left = 291
    Top = 240
    Width = 37
    Height = 14
    Caption = 'Age: 0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lblHeight: TLabel
    Left = 595
    Top = 104
    Width = 4
    Height = 14
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lblWeight: TLabel
    Left = 595
    Top = 132
    Width = 4
    Height = 14
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object RzGroupBox2: TRzGroupBox
    Left = 43
    Top = 68
    Width = 302
    Height = 22
    BorderColor = 6572079
    BorderSides = []
    BorderWidth = 1
    Caption = 'Employee name'
    CaptionFont.Charset = DEFAULT_CHARSET
    CaptionFont.Color = clGray
    CaptionFont.Height = -12
    CaptionFont.Name = 'Tahoma'
    CaptionFont.Style = [fsBold]
    Color = clMenu
    FlatColor = clMedGray
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGray
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    GradientColorStyle = gcsCustom
    GroupStyle = gsUnderline
    ParentFont = False
    TabOrder = 0
  end
  object edMiddlename: TRzDBEdit
    Left = 138
    Top = 154
    Width = 207
    Height = 22
    DataSource = dmEmployee.dsEmployee
    DataField = 'employee_middlename'
    FrameColor = 13816530
    FrameVisible = True
    FramingPreference = fpCustomFraming
    ReadOnlyColor = clWhite
    TabOnEnter = True
    TabOrder = 4
  end
  object edFirstname: TRzDBEdit
    Left = 138
    Top = 126
    Width = 207
    Height = 22
    DataSource = dmEmployee.dsEmployee
    DataField = 'employee_firstname'
    FrameColor = 13816530
    FrameVisible = True
    FramingPreference = fpCustomFraming
    ReadOnlyColor = clWhite
    TabOnEnter = True
    TabOrder = 3
  end
  object edLastname: TRzDBEdit
    Left = 138
    Top = 98
    Width = 207
    Height = 22
    DataSource = dmEmployee.dsEmployee
    DataField = 'employee_lastname'
    Ctl3D = True
    FrameColor = 13816530
    FrameVisible = True
    FramingPreference = fpCustomFraming
    ParentCtl3D = False
    ReadOnlyColor = clWhite
    TabOnEnter = True
    TabOrder = 2
  end
  object RzGroupBox1: TRzGroupBox
    Left = 43
    Top = 204
    Width = 302
    Height = 22
    BorderColor = 6572079
    BorderSides = []
    BorderWidth = 1
    Caption = 'Personal info'
    CaptionFont.Charset = DEFAULT_CHARSET
    CaptionFont.Color = clGray
    CaptionFont.Height = -12
    CaptionFont.Name = 'Tahoma'
    CaptionFont.Style = [fsBold]
    Color = clMenu
    FlatColor = clMedGray
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGray
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    GradientColorStyle = gcsCustom
    GroupStyle = gsUnderline
    ParentFont = False
    TabOrder = 5
  end
  object edIdNum: TRzDBEdit
    Left = 138
    Top = 26
    Width = 121
    Height = 22
    DataSource = dmEmployee.dsEmployee
    DataField = 'id_num'
    CharCase = ecUpperCase
    Ctl3D = True
    FrameColor = 13816530
    FrameVisible = True
    FramingPreference = fpCustomFraming
    ParentCtl3D = False
    TabOnEnter = True
    TabOrder = 1
  end
  object RzDBDateTimeEdit1: TRzDBDateTimeEdit
    Left = 138
    Top = 234
    Width = 121
    Height = 22
    DataSource = dmEmployee.dsEmployee
    DataField = 'birth_date'
    FrameColor = 13816530
    FrameVisible = True
    FramingPreference = fpCustomFraming
    TabOrder = 6
    EditType = etDate
    Format = 'mm/dd/yyyy'
    FlatButtons = True
  end
  object RzDBMemo1: TRzDBMemo
    Left = 138
    Top = 262
    Width = 207
    Height = 50
    DataField = 'birth_place'
    DataSource = dmEmployee.dsEmployee
    TabOrder = 7
    FrameColor = 13816530
    FrameVisible = True
    FramingPreference = fpCustomFraming
  end
  object RzDBDateTimeEdit2: TRzDBDateTimeEdit
    Left = 138
    Top = 405
    Width = 121
    Height = 22
    DataSource = dmEmployee.dsEmployee
    DataField = 'marriage_date'
    FrameColor = 13816530
    FrameVisible = True
    FramingPreference = fpCustomFraming
    TabOrder = 11
    EditType = etDate
    Format = 'mm/dd/yyyy'
    FlatButtons = True
  end
  object RzGroupBox3: TRzGroupBox
    Left = 411
    Top = 68
    Width = 302
    Height = 22
    BorderColor = 6572079
    BorderSides = []
    BorderWidth = 1
    Caption = 'Biograpical info'
    CaptionFont.Charset = DEFAULT_CHARSET
    CaptionFont.Color = clGray
    CaptionFont.Height = -12
    CaptionFont.Name = 'Tahoma'
    CaptionFont.Style = [fsBold]
    Color = clMenu
    FlatColor = clMedGray
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGray
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    GradientColorStyle = gcsCustom
    GroupStyle = gsUnderline
    ParentFont = False
    TabOrder = 13
  end
  object RzDBEdit6: TRzDBEdit
    Left = 506
    Top = 126
    Width = 79
    Height = 22
    DataSource = dmEmployee.dsEmployee
    DataField = 'weight'
    CharCase = ecUpperCase
    FrameColor = 13816530
    FrameVisible = True
    FramingPreference = fpCustomFraming
    ReadOnlyColor = clWhite
    TabOnEnter = True
    TabOrder = 15
  end
  object RzDBEdit7: TRzDBEdit
    Left = 506
    Top = 98
    Width = 79
    Height = 22
    DataSource = dmEmployee.dsEmployee
    DataField = 'height'
    CharCase = ecUpperCase
    Ctl3D = True
    FrameColor = 13816530
    FrameVisible = True
    FramingPreference = fpCustomFraming
    ParentCtl3D = False
    ReadOnlyColor = clWhite
    TabOnEnter = True
    TabOrder = 14
  end
  object RzGroupBox4: TRzGroupBox
    Left = 411
    Top = 204
    Width = 302
    Height = 22
    BorderColor = 6572079
    BorderSides = []
    BorderWidth = 1
    Caption = 'Identification cards'
    CaptionFont.Charset = DEFAULT_CHARSET
    CaptionFont.Color = clGray
    CaptionFont.Height = -12
    CaptionFont.Name = 'Tahoma'
    CaptionFont.Style = [fsBold]
    Color = clMenu
    FlatColor = clMedGray
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGray
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    GradientColorStyle = gcsCustom
    GroupStyle = gsUnderline
    ParentFont = False
    TabOrder = 17
  end
  object RzDBEdit8: TRzDBEdit
    Left = 528
    Top = 234
    Width = 185
    Height = 22
    DataSource = dmEmployee.dsEmployee
    DataField = 'tin'
    CharCase = ecUpperCase
    FrameColor = 13816530
    FrameVisible = True
    FramingPreference = fpCustomFraming
    ReadOnlyColor = clWhite
    TabOnEnter = True
    TabOrder = 18
  end
  object RzDBEdit9: TRzDBEdit
    Left = 528
    Top = 262
    Width = 185
    Height = 22
    DataSource = dmEmployee.dsEmployee
    DataField = 'sss'
    CharCase = ecUpperCase
    FrameColor = 13816530
    FrameVisible = True
    FramingPreference = fpCustomFraming
    ReadOnlyColor = clWhite
    TabOnEnter = True
    TabOrder = 19
  end
  object RzDBEdit10: TRzDBEdit
    Left = 528
    Top = 291
    Width = 185
    Height = 22
    DataSource = dmEmployee.dsEmployee
    DataField = 'hdmf'
    CharCase = ecUpperCase
    FrameColor = 13816530
    FrameVisible = True
    FramingPreference = fpCustomFraming
    ReadOnlyColor = clWhite
    TabOnEnter = True
    TabOrder = 20
  end
  object RzDBEdit11: TRzDBEdit
    Left = 528
    Top = 319
    Width = 185
    Height = 22
    DataSource = dmEmployee.dsEmployee
    DataField = 'phic'
    CharCase = ecUpperCase
    FrameColor = 13816530
    FrameVisible = True
    FramingPreference = fpCustomFraming
    ReadOnlyColor = clWhite
    TabOnEnter = True
    TabOrder = 21
  end
  object RzDBEdit12: TRzDBEdit
    Left = 528
    Top = 348
    Width = 185
    Height = 22
    DataSource = dmEmployee.dsEmployee
    DataField = 'drivers_license'
    CharCase = ecUpperCase
    FrameColor = 13816530
    FrameVisible = True
    FramingPreference = fpCustomFraming
    ReadOnlyColor = clWhite
    TabOnEnter = True
    TabOrder = 22
  end
  object RzDBCheckBox1: TRzDBCheckBox
    Left = 411
    Top = 28
    Width = 63
    Height = 16
    DataField = 'is_external'
    DataSource = dmEmployee.dsEmployee
    ValueChecked = '1'
    ValueUnchecked = '0'
    Caption = 'External'
    TabOrder = 12
  end
  object RzDBLookupComboBox2: TRzDBLookupComboBox
    Left = 138
    Top = 347
    Width = 207
    Height = 22
    DataField = 'religion_id'
    DataSource = dmEmployee.dsEmployee
    KeyField = 'religion_id'
    ListField = 'religion_name'
    ListSource = dmEmployee.dsReligion
    TabOrder = 9
    FlatButtons = True
    FrameColor = 13816530
    FrameVisible = True
    FramingPreference = fpCustomFraming
  end
  object RzDBLookupComboBox3: TRzDBLookupComboBox
    Left = 138
    Top = 376
    Width = 207
    Height = 22
    DataField = 'civil_status'
    DataSource = dmEmployee.dsEmployee
    KeyField = 'value'
    ListField = 'display'
    ListSource = dmEmployee.dsCivilStatus
    TabOrder = 10
    FlatButtons = True
    FrameColor = 13816530
    FrameVisible = True
    FramingPreference = fpCustomFraming
  end
  object RzDBLookupComboBox4: TRzDBLookupComboBox
    Left = 506
    Top = 154
    Width = 79
    Height = 22
    DataField = 'blood_type'
    DataSource = dmEmployee.dsEmployee
    KeyField = 'value'
    ListField = 'display'
    ListSource = dmEmployee.dsBloodType
    TabOrder = 16
    FlatButtons = True
    FrameColor = 13816530
    FrameVisible = True
    FramingPreference = fpCustomFraming
  end
  object RzDBLookupComboBox1: TRzDBLookupComboBox
    Left = 138
    Top = 319
    Width = 121
    Height = 22
    DataField = 'gender'
    DataSource = dmEmployee.dsEmployee
    KeyField = 'value'
    ListField = 'display'
    ListSource = dmEmployee.dscGender
    TabOrder = 8
    FlatButtons = True
    FrameColor = 13816530
    FrameVisible = True
    FramingPreference = fpCustomFraming
  end
end
