inherited frmConfBox2: TfrmConfBox2
  Caption = 'frmConfBox2'
  ClientHeight = 129
  ClientWidth = 357
  ExplicitWidth = 357
  ExplicitHeight = 129
  PixelsPerInch = 96
  TextHeight = 14
  inherited pnlTitle: TRzPanel
    Width = 357
    ExplicitWidth = 357
    inherited imgClose: TImage
      Left = 336
      ExplicitLeft = 336
    end
    inherited lblCaption: TRzLabel
      Width = 73
      Caption = 'Confirmation'
      ExplicitWidth = 73
    end
  end
  inherited pnlMain: TRzPanel
    Width = 357
    Height = 108
    ExplicitLeft = 0
    ExplicitTop = 21
    ExplicitWidth = 357
    ExplicitHeight = 108
    object Image1: TImage
      Left = 21
      Top = 16
      Width = 32
      Height = 32
      Anchors = [akTop, akRight]
      AutoSize = True
      DragCursor = crArrow
      Picture.Data = {
        0954506E67496D61676589504E470D0A1A0A0000000D49484452000000200000
        00200806000000737A7AF400000006624B474400FF00FF00FFA0BDA793000000
        097048597300000048000000480046C96B3E0000000976704167000000200000
        00200087FA9C9D0000030A4944415478DAED974B4C134118C7FFAD643978D244
        A340021C24067C25D65035181550C488F1C6C18B31115224922A0F113C08CA2B
        34840402F1C0C503372346058B91F0265683088447484B047CA0DC3C6080FAED
        6C5B76BBB3B5C5162E6E32E9CCEC747EBFEFDB6FB6A9CEE974622B2FDD7F814D
        6008E7AAB02C765E17229C3E7E6FA68070FA11969F9A1BD8E08A25075DC54A89
        500A086708DE9A67C1B34E339BB89C6241669D196F6512A11260F02779E578D9
        5902A78BA2A3724B4F29C7D5BA128F44280418BCE5D63D58BB1E4A60BD7443AC
        773DB5B4E4525CAF2F437B01C2832DC0E08F736FA3ABB79645AE9311C47E1835
        C71230F8197875073B8329209C257863AE09BDFD8D2AB85E845326EC04EFB703
        1DF930D2F4145720C3025D9B1981BC2018BCFEE6350C0CB5F0E1DB80D99F40DF
        0C839FA269D2C0779E8070DE756E3B38E7560B5E6BCA84ED43AB2BD71CF80F82
        4FD39E05EB70708A5048A6CD2A732EB14151C373BC29F629C1E015A60C8C0CB7
        69C317093EA5867B2D97E065D9A9181FB5B289F803A9286DB26A49ACAF1FB3B2
        0AE7C209D537C987CB058414DAAC342B09D3133D70FF3C88CF71DFFE243C68EE
        F19660F0FBF2F53CF837824F68C3DD02C2856A2C17DD306066D286D5356598E2
        118E8933A0A2D9864E4902A2ECDD2C031C5336782D97E06104FF4AF071DF70B7
        C08EF41A2C25C613680FB0B20AAC39D59B46C426A0BA698C8D0BB213B0601F53
        AFD34B91DBBFD0391F05DA0B7DC33D02D4E2D2AA30683C48127B4962452D212E
        DC1515CBFA8B7376D5197547EE10E19FFC837B1E01B5DDD46249A2DB78882422
        5C99F0CEAF53F62D4EE48E05828FF80F5714A15CE2F861203A5243027CF8EC3C
        30F03130B8772C4A89232411E55BC2039F23F870E0704E32BD248E6A674211F9
        FB8DC179026A09833A138AC86D1B876B0928252AD19D788C0A335A3A1DE2C5AA
        7D16187A47F0A28DC37D09A8248C89241123DD7038A8DA87FE1DFE370195C489
        93D2647F5F70E0FE0828242ED6A05B9C78911F1CB8BF02728948D7783E18F040
        04DC12DB5DFD5FC180072A10926BEBFF1B6EB5C01F44DF6D4FA29764F8000000
        3274455874636F6D6D656E74005469636B2066726F6D2049636F6E2047616C6C
        65727920687474703A2F2F69636F6E67616C2E636F6D2FEB0C652F0000002574
        455874646174653A63726561746500323031312D30382D32315431343A31333A
        30362D30363A3030F94941040000002574455874646174653A6D6F6469667900
        323031312D30382D32315431343A31333A30362D30363A30308814F9B8000000
        1974455874536F6674776172650041646F626520496D616765526561647971C9
        653C0000000049454E44AE426082}
    end
    object lblMessage: TLabel
      Left = 59
      Top = 21
      Width = 197
      Height = 14
      Caption = 'Record has been saved successfully.'
    end
    object pnlClose: TRzPanel
      Left = 299
      Top = 78
      Width = 50
      Height = 22
      Anchors = [akLeft, akBottom]
      BorderOuter = fsNone
      BorderColor = 13816530
      BorderWidth = 1
      TabOrder = 0
      object btnClose: TRzShapeButton
        Left = 0
        Top = 0
        Width = 50
        Height = 22
        BorderStyle = bsNone
        Caption = 'Close'
        OnClick = btnCloseClick
      end
    end
  end
end
