object ForApprovalFrame: TForApprovalFrame
  Left = 0
  Top = 0
  Width = 1407
  Height = 689
  OnCreate = UniFrameCreate
  OnDestroy = UniFrameDestroy
  Align = alClient
  Anchors = [akLeft, akTop, akRight, akBottom]
  Font.Height = -12
  TabOrder = 0
  ParentFont = False
  ExplicitWidth = 451
  ExplicitHeight = 305
  DesignSize = (
    1407
    689)
  object HeaderPanel: TUniSimplePanel
    Left = 0
    Top = 0
    Width = 1407
    Height = 89
    Hint = ''
    ParentColor = False
    Color = clTeal
    Align = alTop
    AlignmentControl = uniAlignmentClient
    ParentAlignmentControl = False
    TabOrder = 0
    ExplicitWidth = 451
    object UniLabel5: TUniLabel
      Left = 56
      Top = 27
      Width = 299
      Height = 39
      Hint = ''
      Caption = 'Pending entitlements'
      ParentFont = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -32
      TabOrder = 1
    end
  end
  object ListGrid: TUniDBGrid
    Left = 32
    Top = 176
    Width = 1334
    Height = 440
    Hint = ''
    ClientEvents.ExtEvents.Strings = (
      
        'headerclick=function headerclick(ct, column, e, t, eOpts)'#13#10'{'#13#10'  ' +
        'ForApprovalFrame.ListGrid.getStore().sort(column.dataIndex);'#13#10'}')
    ClientEvents.UniEvents.Strings = (
      
        'store.afterCreate=function store.afterCreate(sender)'#13#10'{'#13#10'  sende' +
        'r.remoteSort=false;'#13#10'}')
    DataSource = UniMainModule.dscForApproval
    Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgAutoRefreshRow]
    ReadOnly = True
    LoadMask.Message = 'Loading data...'
    EmptyText = 'No pending entitlements found.'
    Anchors = [akLeft, akTop, akRight, akBottom]
    Font.Height = -12
    ParentFont = False
    TabOrder = 1
    OnColumnSort = ListGridColumnSort
    Columns = <
      item
        ActionColumn.Enabled = True
        ActionColumn.Buttons = <
          item
            Action = ActionApprove
            ButtonId = 0
            Hint = 'Approve'
            IconCls = 'action'
          end
          item
            Action = ActionDisapprove
            ButtonId = 1
            Hint = 'Disapprove'
            IconCls = 'compose'
          end>
        Title.Caption = ' '
        Width = 40
      end
      item
        FieldName = 'employee_name'
        Title.Alignment = taCenter
        Title.Caption = 'Employee'
        Title.Font.Height = -12
        Title.Font.Style = [fsBold]
        Width = 200
        Font.Height = -12
        ReadOnly = True
        Sortable = True
        Menu.MenuEnabled = False
        Menu.ColumnHideable = False
      end
      item
        FieldName = 'dt_f'
        Title.Alignment = taCenter
        Title.Caption = 'Leave date'
        Title.Font.Height = -12
        Title.Font.Style = [fsBold]
        Width = 120
        Font.Height = -12
        ReadOnly = True
        Sortable = True
        Menu.MenuEnabled = False
        Menu.ColumnHideable = False
      end
      item
        FieldName = 'leave_type'
        Title.Caption = 'Type'
        Title.Font.Height = -12
        Title.Font.Style = [fsBold]
        Width = 150
        Font.Height = -12
        Sortable = True
        Menu.MenuEnabled = False
        Menu.ColumnHideable = False
      end
      item
        FieldName = 'is_paid_f'
        Title.Caption = 'Paid'
        Title.Font.Height = -12
        Title.Font.Style = [fsBold]
        Width = 40
        Font.Height = -12
        ReadOnly = True
        Sortable = True
        Menu.MenuEnabled = False
        Menu.ColumnHideable = False
      end
      item
        FieldName = 'reason'
        Title.Caption = 'Reason'
        Title.Font.Height = -12
        Title.Font.Style = [fsBold]
        Width = 200
        Font.Height = -12
        Sortable = True
        Menu.MenuEnabled = False
        Menu.ColumnHideable = False
      end
      item
        FieldName = 'remarks'
        Title.Caption = 'Remarks'
        Title.Font.Height = -12
        Title.Font.Style = [fsBold]
        Width = 450
        Font.Height = -12
        Sortable = True
        Menu.MenuEnabled = False
        Menu.ColumnHideable = False
      end
      item
        FieldName = 'app_dt_f'
        Title.Alignment = taCenter
        Title.Caption = 'Date filed'
        Title.Font.Height = -12
        Title.Font.Style = [fsBold]
        Width = 120
        Font.Height = -12
        ReadOnly = True
        Sortable = True
        Menu.MenuEnabled = False
        Menu.ColumnHideable = False
      end>
  end
  object ApproveButton: TUniButton
    Left = 32
    Top = 635
    Width = 129
    Height = 30
    Hint = ''
    Caption = 'Approve'
    Anchors = [akLeft, akBottom]
    ParentFont = False
    Font.Charset = ANSI_CHARSET
    Font.Height = -13
    Font.Name = 'Arial'
    TabOrder = 2
    Default = True
    ClientEvents.ExtEvents.Strings = (
      
        'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'  sender' +
        '.addCls('#39'bntLogin'#39');'#13#10'}')
    ScaleButton = False
    OnClick = ApproveButtonClick
    ExplicitTop = 251
  end
  object DisapproveButton: TUniButton
    Left = 176
    Top = 635
    Width = 129
    Height = 30
    Hint = ''
    Caption = 'Disapprove'
    Anchors = [akLeft, akBottom]
    ParentFont = False
    Font.Charset = ANSI_CHARSET
    Font.Height = -13
    Font.Name = 'Arial'
    TabOrder = 3
    Default = True
    ClientEvents.ExtEvents.Strings = (
      
        'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'  sender' +
        '.addCls('#39'bntLogin'#39');'#13#10'}')
    ScaleButton = False
    OnClick = DisapproveButtonClick
    ExplicitTop = 251
  end
  object UniLabel7: TUniLabel
    Left = 32
    Top = 142
    Width = 72
    Height = 14
    Hint = ''
    Caption = 'Payroll period'
    TabOrder = 4
  end
  object PeriodCombo: TUniComboBox
    Left = 120
    Top = 136
    Width = 217
    Hint = ''
    Text = 'PeriodCombo'
    TabOrder = 5
    ForceSelection = False
  end
  object UpdateButton: TUniButton
    Left = 352
    Top = 131
    Width = 73
    Height = 30
    Hint = ''
    Caption = 'Update'
    ParentFont = False
    Font.Charset = ANSI_CHARSET
    Font.Height = -13
    Font.Name = 'Arial'
    TabOrder = 6
    Default = True
    ClientEvents.ExtEvents.Strings = (
      
        'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'  sender' +
        '.addCls('#39'bntLogin'#39');'#13#10'}')
    ScaleButton = False
    OnClick = UpdateButtonClick
  end
  object LeaveActionList: TActionList
    Left = 1152
    Top = 176
    object ActionApprove: TAction
      Caption = 'ActionApprove'
      OnExecute = ActionApproveExecute
    end
    object ActionDisapprove: TAction
      Caption = 'ActionDisapprove'
      OnExecute = ActionDisapproveExecute
    end
  end
end
