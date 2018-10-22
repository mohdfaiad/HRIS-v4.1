object frmSyncClientWebMain: TfrmSyncClientWebMain
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Synchronization Client for Web'
  ClientHeight = 495
  ClientWidth = 933
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  DesignSize = (
    933
    495)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 16
    Width = 470
    Height = 17
    AutoSize = False
    Caption = 
      'This synchronization client listens for leave records sent to th' +
      'e HRISWEB database.'
    WordWrap = True
  end
  object lblUpdate: TLabel
    Left = 136
    Top = 40
    Width = 3
    Height = 13
  end
  object lblRecordsRemaining: TLabel
    Left = 376
    Top = 40
    Width = 3
    Height = 13
  end
  object lblSyncServerUpdate: TLabel
    Left = 136
    Top = 66
    Width = 3
    Height = 13
  end
  object SychronizeToWeb: TCheckBox
    Left = 8
    Top = 39
    Width = 122
    Height = 17
    Caption = 'Sychronize to web'
    TabOrder = 0
    OnClick = SychronizeToWebClick
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 96
    Width = 933
    Height = 379
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = dscLeaves
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'event_object'
        Title.Caption = 'Object'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'pk_event_object'
        Title.Caption = 'Key'
        Width = 103
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ws_message_date'
        Title.Caption = 'Date'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'source_location'
        Title.Caption = 'Source'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ws_message'
        Title.Caption = 'Message'
        Width = 431
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'last_transaction_date'
        Title.Caption = 'Latest transaction'
        Width = 156
        Visible = True
      end>
  end
  object edSQL: TEdit
    Left = 0
    Top = 474
    Width = 933
    Height = 21
    Anchors = [akLeft, akBottom]
    TabOrder = 2
    ExplicitTop = 399
  end
  object btnSkipRecord: TButton
    Left = 840
    Top = 35
    Width = 75
    Height = 25
    Caption = 'Skip record'
    TabOrder = 3
    OnClick = btnSkipRecordClick
  end
  object SynchronizeToServer: TCheckBox
    Left = 8
    Top = 62
    Width = 122
    Height = 17
    Caption = 'Sychronize to server'
    TabOrder = 4
    OnClick = SynchronizeToServerClick
  end
  object ConnectionMain: TADOConnection
    ConnectionString = 
      'Provider=SQLNCLI11.1;Persist Security Info=False;User ID=sa;Init' +
      'ial Catalog=HRISWeb;Data Source=BRYAN-LENOVO\DEV;Initial File Na' +
      'me="";Server SPN="";'
    LoginPrompt = False
    Provider = 'SQLNCLI11.1'
    BeforeConnect = ConnectionMainBeforeConnect
    Left = 832
    Top = 344
  end
  object dscLeaves: TDataSource
    DataSet = dstLeaves
    Left = 704
    Top = 344
  end
  object dstLeaves: TADODataSet
    Connection = ConnectionMain
    CursorType = ctStatic
    CommandText = 'sync_get_message_web;1'
    CommandType = cmdStoredProc
    Parameters = <>
    Left = 768
    Top = 344
  end
  object ConnectionHRIS: TADOConnection
    ConnectionString = 
      'Provider=SQLNCLI11.1;Integrated Security=SSPI;Persist Security I' +
      'nfo=False;User ID="";Initial Catalog=HRIS;Data Source=BRYAN-LENO' +
      'VO\DEV;Initial File Name="";Server SPN="";'
    LoginPrompt = False
    Provider = 'SQLNCLI11.1'
    BeforeConnect = ConnectionHRISBeforeConnect
    Left = 552
    Top = 344
  end
  object dqSync: TADOQuery
    Connection = ConnectionHRIS
    Parameters = <>
    Left = 632
    Top = 344
  end
end
