object frmSyncClientMain: TfrmSyncClientMain
  Left = 0
  Top = 0
  Caption = 'HRIS Synchronization Client'
  ClientHeight = 482
  ClientWidth = 929
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  DesignSize = (
    929
    482)
  PixelsPerInch = 96
  TextHeight = 13
  object lblGetMessage: TLabel
    Left = 168
    Top = 41
    Width = 3
    Height = 13
  end
  object cbxSendMessage: TCheckBox
    Left = 24
    Top = 16
    Width = 97
    Height = 17
    Caption = 'Send message'
    TabOrder = 0
  end
  object cbxGetMessage: TCheckBox
    Left = 24
    Top = 40
    Width = 97
    Height = 17
    Caption = 'Get message'
    TabOrder = 1
    OnClick = cbxGetMessageClick
  end
  object cbxChangeStatus: TCheckBox
    Left = 24
    Top = 64
    Width = 97
    Height = 17
    Caption = 'Change status'
    TabOrder = 2
  end
  object cbxUpdateStatus: TCheckBox
    Left = 24
    Top = 87
    Width = 97
    Height = 17
    Caption = 'Update status'
    TabOrder = 3
  end
  object cbxUpdateDb: TCheckBox
    Left = 24
    Top = 111
    Width = 97
    Height = 17
    Caption = 'Save to db'
    TabOrder = 4
  end
  object cbxSendStatus: TCheckBox
    Left = 24
    Top = 134
    Width = 97
    Height = 17
    Caption = 'Send status'
    TabOrder = 5
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 176
    Width = 929
    Height = 306
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 6
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
end
