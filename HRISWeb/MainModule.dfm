object UniMainModule: TUniMainModule
  OldCreateOrder = False
  OnDestroy = UniGUIMainModuleDestroy
  Theme = 'gray'
  MonitoredKeys.Keys = <>
  Height = 180
  Width = 387
  object MainConnection: TADOConnection
    ConnectionString = 
      'Provider=SQLNCLI11.1;Integrated Security=SSPI;Persist Security I' +
      'nfo=False;User ID="";Initial Catalog=HRIS;Data Source=BRYAN-X1C\' +
      'DEVELOPMENT;Initial File Name="";Server SPN=""'
    LoginPrompt = False
    Provider = 'SQLNCLI11.1'
    BeforeConnect = MainConnectionBeforeConnect
    Left = 56
    Top = 32
  end
  object dstUser: TADODataSet
    Connection = MainConnection
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'sec_get_user_by_username'
    CommandType = cmdStoredProc
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@username'
        Attributes = [paNullable]
        DataType = ftString
        Size = 25
        Value = ''
      end>
    Left = 160
    Top = 32
  end
  object dscForApproval: TDataSource
    DataSet = dstForApproval
    Left = 247
    Top = 96
  end
  object dstForApproval: TADODataSet
    Connection = MainConnection
    CursorType = ctStatic
    Filtered = True
    LockType = ltReadOnly
    CommandText = 'dtr_get_for_approval;1'
    CommandType = cmdStoredProc
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@payroll_code'
        Attributes = [paNullable]
        DataType = ftString
        Size = 15
        Value = ''
      end>
    Left = 159
    Top = 96
    object dstForApprovalentitlement: TWordField
      FieldName = 'entitlement'
    end
    object dstForApprovaldt: TDateTimeField
      FieldName = 'dt'
    end
    object dstForApprovalid_num: TStringField
      FieldName = 'id_num'
      Size = 12
    end
    object dstForApprovallocation_code: TStringField
      FieldName = 'location_code'
      FixedChar = True
      Size = 3
    end
    object dstForApprovaltime_from: TStringField
      FieldName = 'time_from'
      FixedChar = True
      Size = 5
    end
    object dstForApprovaltime_until: TStringField
      FieldName = 'time_until'
      FixedChar = True
      Size = 5
    end
    object dstForApprovalreason: TStringField
      FieldName = 'reason'
      Size = 100
    end
    object dstForApprovalremarks: TStringField
      FieldName = 'remarks'
      Size = 100
    end
    object dstForApprovalemployee_name: TStringField
      FieldName = 'employee_name'
      ReadOnly = True
      Size = 102
    end
    object dstForApprovaldt_f: TStringField
      FieldName = 'dt_f'
      ReadOnly = True
      Size = 10
    end
    object dstForApprovaltime_from_f: TStringField
      FieldKind = fkCalculated
      FieldName = 'time_from_f'
      FixedChar = True
      Size = 5
      Calculated = True
    end
    object dstForApprovaltime_until_f: TStringField
      FieldKind = fkCalculated
      FieldName = 'time_until_f'
      FixedChar = True
      Size = 5
      Calculated = True
    end
    object dstForApprovalleave_id: TIntegerField
      FieldName = 'leave_id'
    end
    object dstForApprovaldepartment_code: TStringField
      FieldName = 'department_code'
      FixedChar = True
      Size = 3
    end
    object dstForApprovalpositiontype_code: TStringField
      FieldName = 'positiontype_code'
      FixedChar = True
      Size = 3
    end
    object dstForApprovalapp_dt: TDateTimeField
      FieldName = 'app_dt'
    end
    object dstForApprovalapp_dt_f: TStringField
      FieldName = 'app_dt_f'
      ReadOnly = True
      Size = 10
    end
    object dstForApprovalstatus: TStringField
      FieldKind = fkCalculated
      FieldName = 'status'
      Size = 3
      Calculated = True
    end
    object dstForApprovalam_pm: TStringField
      FieldName = 'am_pm'
      FixedChar = True
      Size = 1
    end
    object dstForApprovalemployee_location_code: TStringField
      FieldName = 'employee_location_code'
      FixedChar = True
      Size = 3
    end
    object dstForApprovalam_pm_f: TStringField
      FieldName = 'am_pm_f'
      ReadOnly = True
      Size = 14
    end
    object dstForApprovalis_paid: TWordField
      FieldName = 'is_paid'
    end
    object dstForApprovalis_paid_f: TStringField
      FieldName = 'is_paid_f'
      ReadOnly = True
      Size = 3
    end
    object dstForApprovalleave_type: TStringField
      FieldName = 'leave_type'
      Size = 100
    end
  end
end
