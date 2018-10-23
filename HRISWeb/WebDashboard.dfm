object DashboardFrame: TDashboardFrame
  Left = 0
  Top = 0
  Width = 1523
  Height = 778
  OnCreate = UniFrameCreate
  OnDestroy = UniFrameDestroy
  Align = alClient
  Anchors = [akLeft, akTop, akRight, akBottom]
  TabOrder = 0
  ExplicitWidth = 451
  ExplicitHeight = 305
  DesignSize = (
    1523
    778)
  object HeaderPanel: TUniSimplePanel
    Left = 0
    Top = 0
    Width = 1523
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
      Width = 204
      Height = 39
      Hint = ''
      Caption = 'My Dashboard'
      ParentFont = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -32
      TabOrder = 1
    end
  end
  object UniLabel1: TUniLabel
    Left = 56
    Top = 132
    Width = 199
    Height = 25
    Hint = ''
    Caption = 'Pending Entitlements'
    ParentFont = False
    Font.Charset = ANSI_CHARSET
    Font.Color = 10526880
    Font.Height = -21
    TabOrder = 1
  end
  object PendingListGrid: TUniDBGrid
    Left = 56
    Top = 176
    Width = 953
    Height = 546
    Hint = ''
    ClientEvents.ExtEvents.Strings = (
      
        'headerclick=function headerclick(ct, column, e, t, eOpts)'#13#10'{'#13#10'  ' +
        'ForApprovalFrame.ListGrid.getStore().sort(column.dataIndex);'#13#10'}')
    ClientEvents.UniEvents.Strings = (
      
        'store.afterCreate=function store.afterCreate(sender)'#13#10'{'#13#10'  sende' +
        'r.remoteSort=false;'#13#10'}')
    DataSource = UniMainModule.dscLeavesPending
    Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgAutoRefreshRow]
    ReadOnly = True
    LoadMask.Message = 'Loading data...'
    EmptyText = 'No pending entitlements found.'
    Anchors = [akLeft, akTop, akBottom]
    Font.Height = -12
    ParentFont = False
    TabOrder = 2
    Columns = <
      item
        FieldName = 'leave_date_f'
        Title.Caption = 'Date'
        Title.Font.Height = -12
        Title.Font.Style = [fsBold]
        Width = 90
        Font.Height = -12
        Sortable = True
        Menu.MenuEnabled = False
        Menu.ColumnHideable = False
      end
      item
        FieldName = 'leavetype_name'
        Title.Caption = 'Type'
        Title.Font.Height = -12
        Title.Font.Style = [fsBold]
        Width = 150
        Font.Height = -12
        ReadOnly = True
        Sortable = True
        Menu.MenuEnabled = False
        Menu.ColumnHideable = False
      end
      item
        FieldName = 'leavereason_name'
        Title.Caption = 'Reason'
        Title.Font.Height = -12
        Title.Font.Style = [fsBold]
        Width = 180
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
        Sortable = True
        Menu.MenuEnabled = False
        Menu.ColumnHideable = False
      end
      item
        FieldName = 'leave_remarks'
        Title.Alignment = taCenter
        Title.Caption = 'Remarks'
        Title.Font.Height = -12
        Title.Font.Style = [fsBold]
        Width = 320
        Font.Height = -12
        ReadOnly = True
        Sortable = True
        Menu.MenuEnabled = False
        Menu.ColumnHideable = False
      end
      item
        FieldName = 'leave_application_date_f'
        Title.Alignment = taCenter
        Title.Caption = 'Applied'
        Title.Font.Height = -12
        Title.Font.Style = [fsBold]
        Width = 90
        Font.Height = -12
        ReadOnly = True
        Sortable = True
        Menu.MenuEnabled = False
        Menu.ColumnHideable = False
      end>
  end
  object UniLabel2: TUniLabel
    Left = 1048
    Top = 132
    Width = 134
    Height = 25
    Hint = ''
    Caption = 'Leaves availed'
    ParentFont = False
    Font.Charset = ANSI_CHARSET
    Font.Color = 10526880
    Font.Height = -21
    TabOrder = 3
  end
  object ApprovedListGrid: TUniDBGrid
    Left = 1048
    Top = 176
    Width = 361
    Height = 546
    Hint = ''
    ClientEvents.ExtEvents.Strings = (
      
        'headerclick=function headerclick(ct, column, e, t, eOpts)'#13#10'{'#13#10'  ' +
        'ForApprovalFrame.ListGrid.getStore().sort(column.dataIndex);'#13#10'}')
    ClientEvents.UniEvents.Strings = (
      
        'store.afterCreate=function store.afterCreate(sender)'#13#10'{'#13#10'  sende' +
        'r.remoteSort=false;'#13#10'}')
    TitleFont.Style = [fsBold]
    DataSource = UniMainModule.dscLeavesApproved
    Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgAutoRefreshRow]
    ReadOnly = True
    LoadMask.Message = 'Loading data...'
    EmptyText = 'No leaves availed found.'
    Anchors = [akLeft, akTop, akBottom]
    Font.Height = -12
    ParentFont = False
    TabOrder = 4
    Columns = <
      item
        FieldName = 'leavetype_name'
        Title.Caption = 'Type'
        Title.Font.Style = [fsBold]
        Width = 200
        Font.Height = -12
        ReadOnly = True
        Sortable = True
        Menu.MenuEnabled = False
        Menu.ColumnHideable = False
      end
      item
        FieldName = 'paid'
        Title.Caption = 'Paid'
        Title.Font.Style = [fsBold]
        Width = 60
        Font.Height = -12
        ReadOnly = True
        Sortable = True
        Menu.MenuEnabled = False
        Menu.ColumnHideable = False
      end
      item
        FieldName = 'unpaid'
        Title.Caption = 'Unpaid'
        Title.Font.Style = [fsBold]
        Width = 60
        ReadOnly = True
      end>
  end
end
