object LeaveDetailsForm: TLeaveDetailsForm
  Left = 0
  Top = 0
  ClientHeight = 295
  ClientWidth = 558
  Caption = 'LeaveDetailsForm'
  BorderStyle = bsNone
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  DesignSize = (
    558
    295)
  PixelsPerInch = 96
  TextHeight = 13
  object CloseImage: TUniImage
    Left = 534
    Top = 8
    Width = 16
    Height = 16
    Cursor = crHandPoint
    Hint = 'Close'
    ShowHint = True
    ParentShowHint = False
    AutoSize = True
    Picture.Data = {
      0954506E67496D61676589504E470D0A1A0A0000000D49484452000000100000
      001008060000001FF3FF610000001974455874536F6674776172650041646F62
      6520496D616765526561647971C9653C000002224944415478DAA5923F4C1361
      18C69FEB9FA3D2620CA45D2C31426249970E771D6AAA1D30C574301D9C98088B
      092BB39B8B038B4313191C4C4A1C1B1207454835C412AB890E588980C4D2DC95
      5C5B4FE538AE96FADE7D47539B001ADFE4BDFBBEE7EEF97DEFE51EAEDD6EE37F
      8A7B625E001FF51D5A4E500F9EE1A9533FA3631F52FFB40054B397C2E199B158
      2CC8F7F7F32739CD690D4D334A85C26EB954CA9034C765D9B3E7135353898366
      93C75F940B3056B2D997B44C728F99F6F6E6F4B450ABD5ACCD582E874FE9F41F
      A66ECDEBF522BFB0F08E9622F7C806DC989C146459467479B9632A8E8F5BF75E
      CDE7F3616D719101E66DC0F5745A9024098AA2E0F6E626745D87AAAAD0340DAD
      560B0E87032BA208B7DB0DBFDF8FCAFA3A03646C403C9512AAD52A5ACD26A44A
      0591A525389D4ECBC0F33C5E45A370DA53786982BD7299011E1C03924941DAD9
      8156AFA34D2786F2F98ED9ECB548A4F3197C5F1FBECA3203CCD980ABA228D4B6
      B7CD7F85E11EB3CBE5B2FA4D2864BDECA0C94A8AC200F76D40626444D01A0D0C
      75993FD0D8665DDBD8B00066BD1F1DA5E47128D6EB0C70CF06A48241C1D8DFC7
      1E6DC2C5223E9239608F6C6AF1AD2DAC92F9587BD16830C05D3B48B70281046F
      07A9427DB1273CDDDAC1D191F15455599086E94AF198BDE2F1CCC43C9EE000C7
      9D9AC61F647EADEBBB9F0F0F333933CAA40D9E072EC7893304C4687FE18C247F
      A3BC165681DC77E08B0938473DC022FE4FF5CB1CE83770D0D05478554C580000
      000049454E44AE426082}
    Anchors = [akTop, akRight]
    OnClick = CloseImageClick
  end
  object UniLabel1: TUniLabel
    Left = 32
    Top = 28
    Width = 261
    Height = 25
    Hint = ''
    Caption = 'Leave / Business trip details'
    ParentFont = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clTeal
    Font.Height = -21
    TabOrder = 1
  end
  object UniLabel2: TUniLabel
    Left = 32
    Top = 91
    Width = 26
    Height = 14
    Hint = ''
    Caption = 'Date'
    ParentFont = False
    Font.Charset = ANSI_CHARSET
    Font.Color = 5592405
    Font.Height = -12
    TabOrder = 2
  end
  object UniLabel3: TUniLabel
    Left = 32
    Top = 123
    Width = 28
    Height = 14
    Hint = ''
    Caption = 'Type'
    ParentFont = False
    Font.Charset = ANSI_CHARSET
    Font.Color = 5592405
    Font.Height = -12
    TabOrder = 3
  end
  object UniLabel4: TUniLabel
    Left = 32
    Top = 155
    Width = 34
    Height = 14
    Hint = ''
    Caption = 'Period'
    ParentFont = False
    Font.Charset = ANSI_CHARSET
    Font.Color = 5592405
    Font.Height = -12
    TabOrder = 4
  end
  object UniLabel5: TUniLabel
    Left = 32
    Top = 187
    Width = 39
    Height = 14
    Hint = ''
    Caption = 'Reason'
    ParentFont = False
    Font.Charset = ANSI_CHARSET
    Font.Color = 5592405
    Font.Height = -12
    TabOrder = 5
  end
  object UniLabel6: TUniLabel
    Left = 264
    Top = 91
    Width = 22
    Height = 14
    Hint = ''
    Caption = 'Paid'
    ParentFont = False
    Font.Charset = ANSI_CHARSET
    Font.Color = 5592405
    Font.Height = -12
    TabOrder = 6
  end
  object DateLabel: TUniLabel
    Left = 104
    Top = 91
    Width = 5
    Height = 14
    Hint = ''
    Caption = '-'
    ParentFont = False
    Font.Charset = ANSI_CHARSET
    Font.Color = 5592405
    Font.Height = -12
    Font.Style = [fsBold]
    TabOrder = 7
  end
  object TypeLabel: TUniLabel
    Left = 104
    Top = 123
    Width = 5
    Height = 14
    Hint = ''
    Caption = '-'
    ParentFont = False
    Font.Charset = ANSI_CHARSET
    Font.Color = 5592405
    Font.Height = -12
    Font.Style = [fsBold]
    TabOrder = 8
  end
  object ReasonLabel: TUniLabel
    Left = 104
    Top = 187
    Width = 5
    Height = 14
    Hint = ''
    Caption = '-'
    ParentFont = False
    Font.Charset = ANSI_CHARSET
    Font.Color = 5592405
    Font.Height = -12
    Font.Style = [fsBold]
    TabOrder = 9
  end
  object PeriodLabel: TUniLabel
    Left = 104
    Top = 155
    Width = 5
    Height = 14
    Hint = ''
    Caption = '-'
    ParentFont = False
    Font.Charset = ANSI_CHARSET
    Font.Color = 5592405
    Font.Height = -12
    Font.Style = [fsBold]
    TabOrder = 10
  end
  object PaidPanel: TUniSimplePanel
    Left = 336
    Top = 89
    Width = 28
    Height = 17
    Hint = ''
    ParentColor = False
    Color = clGreen
    TabOrder = 11
    object PaidLabel: TUniLabel
      Left = 3
      Top = 1
      Width = 20
      Height = 14
      Hint = ''
      Caption = 'Yes'
      ParentFont = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Style = [fsBold]
      ParentColor = False
      Color = clGreen
      TabOrder = 1
    end
  end
  object UniLabel7: TUniLabel
    Left = 32
    Top = 219
    Width = 45
    Height = 14
    Hint = ''
    Caption = 'Remarks'
    ParentFont = False
    Font.Charset = ANSI_CHARSET
    Font.Color = 5592405
    Font.Height = -12
    TabOrder = 12
  end
  object RemarksLabel: TUniLabel
    Left = 104
    Top = 219
    Width = 377
    Height = 46
    Hint = ''
    AutoSize = False
    Caption = '-'
    ParentFont = False
    Font.Charset = ANSI_CHARSET
    Font.Color = 5592405
    Font.Height = -12
    Font.Style = [fsBold]
    TabOrder = 13
  end
end
