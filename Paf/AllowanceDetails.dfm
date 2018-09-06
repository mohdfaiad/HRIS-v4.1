inherited frmAllowanceDetails: TfrmAllowanceDetails
  Caption = 'frmAllowanceDetails'
  ClientHeight = 217
  ClientWidth = 324
  ExplicitWidth = 324
  ExplicitHeight = 217
  PixelsPerInch = 96
  TextHeight = 14
  inherited pnlTitle: TRzPanel
    Width = 324
    ExplicitWidth = 324
    inherited imgClose: TImage
      Left = 303
      ExplicitLeft = 303
    end
    inherited lblCaption: TRzLabel
      Width = 98
      Caption = 'Allowance details'
      ExplicitWidth = 98
    end
  end
  inherited pnlMain: TRzPanel
    Width = 324
    Height = 196
    ExplicitWidth = 324
    ExplicitHeight = 196
    inherited pnlDetail: TRzPanel
      Width = 305
      Height = 148
      ExplicitWidth = 305
      ExplicitHeight = 148
      DesignSize = (
        305
        148)
      inherited lblError: TLabel
        Top = 115
        ExplicitTop = 115
      end
      object Label1: TLabel
        Left = 28
        Top = 29
        Width = 28
        Height = 14
        Caption = 'Type'
      end
      object Label2: TLabel
        Left = 28
        Top = 54
        Width = 31
        Height = 14
        Caption = 'Salary'
      end
      object Label3: TLabel
        Left = 29
        Top = 81
        Width = 32
        Height = 14
        Caption = 'Expiry'
      end
      object RzDBLookupComboBox5: TRzDBLookupComboBox
        Left = 90
        Top = 21
        Width = 175
        Height = 22
        DataField = 'allowancetype_code'
        DataSource = dmPaf.dscPafAllowances
        KeyField = 'allowancetype_code'
        ListField = 'allowancetype_name'
        ListSource = dmPaf.dscAllowanceTypes
        TabOrder = 0
        FlatButtons = True
        FrameColor = 13816530
        FrameVisible = True
        FramingPreference = fpCustomFraming
      end
      object RzDBNumericEdit1: TRzDBNumericEdit
        Left = 90
        Top = 48
        Width = 104
        Height = 22
        DataSource = dmPaf.dscPafAllowances
        DataField = 'allowance_amount'
        Alignment = taLeftJustify
        FrameColor = 13816530
        FrameVisible = True
        FramingPreference = fpCustomFraming
        TabOrder = 1
        IntegersOnly = False
        DisplayFormat = '###,###,##0.00'
      end
      object RzDBDateTimeEdit1: TRzDBDateTimeEdit
        Left = 89
        Top = 75
        Width = 105
        Height = 22
        DataSource = dmPaf.dscPafAllowances
        DataField = 'expiry_date'
        FrameColor = 13816530
        FrameVisible = True
        FramingPreference = fpCustomFraming
        TabOrder = 2
        EditType = etDate
        Format = 'mm/dd/yyyy'
        FlatButtons = True
      end
    end
    inherited btnSave: TRzPanel
      Left = 208
      Top = 165
      ExplicitLeft = 208
      ExplicitTop = 165
    end
    inherited btnCancel: TRzPanel
      Left = 264
      Top = 165
      ExplicitLeft = 264
      ExplicitTop = 165
    end
  end
end
