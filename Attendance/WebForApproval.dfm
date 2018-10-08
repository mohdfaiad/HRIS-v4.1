object ForApprovalFrame: TForApprovalFrame
  Left = 0
  Top = 0
  Width = 1049
  Height = 598
  OnCreate = UniFrameCreate
  OnDestroy = UniFrameDestroy
  Align = alClient
  Anchors = [akLeft, akTop, akRight, akBottom]
  TabOrder = 0
  ExplicitWidth = 451
  ExplicitHeight = 305
  DesignSize = (
    1049
    598)
  object HeaderPanel: TUniSimplePanel
    Left = 0
    Top = 0
    Width = 1049
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
    Top = 136
    Width = 976
    Height = 389
    Hint = ''
    ClientEvents.ExtEvents.Strings = (
      
        'headerclick=function headerclick(ct, column, e, t, eOpts)'#13#10'{'#13#10'  ' +
        'ForApprovalFrame.ListGrid.getStore().sort(column.dataIndex);'#13#10'}')
    ClientEvents.UniEvents.Strings = (
      
        'store.afterCreate=function store.afterCreate(sender)'#13#10'{'#13#10'  sende' +
        'r.remoteSort=false;'#13#10'}')
    DataSource = UniMainModule.dscForApproval
    Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgAutoRefreshRow]
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
            ButtonId = 0
            Hint = 'Approve'
            IconCls = 'action'
          end
          item
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
        Width = 650
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
end
