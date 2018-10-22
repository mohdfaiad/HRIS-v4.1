object dmLeave: TdmLeave
  OldCreateOrder = False
  Height = 180
  Width = 421
  object dstLeaves: TADODataSet
    Connection = dmApplication.acMain
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'dtr_get_leaves;1'
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
        Name = '@date_from'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = 0d
      end
      item
        Name = '@date_until'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = 0d
      end
      item
        Name = '@id_num'
        Attributes = [paNullable]
        DataType = ftString
        Size = 12
        Value = ''
      end
      item
        Name = '@branch_code'
        Attributes = [paNullable]
        DataType = ftString
        Size = 3
        Value = ''
      end>
    Left = 47
    Top = 24
  end
  object dstLeaveCredits: TADODataSet
    Connection = dmApplication.acMain
    CursorType = ctStatic
    Filtered = True
    AfterOpen = dstLeaveCreditsAfterOpen
    CommandText = 'dtr_get_leave_credits;1'
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
        Name = '@id_num'
        Attributes = [paNullable]
        DataType = ftString
        Size = 12
        Value = ''
      end
      item
        Name = '@year'
        Attributes = [paNullable]
        DataType = ftSmallint
        Precision = 5
        Value = 0
      end>
    Left = 151
    Top = 24
    object dstLeaveCreditsyear: TIntegerField
      FieldName = 'year'
    end
    object dstLeaveCreditsid_num: TStringField
      FieldName = 'id_num'
      Size = 12
    end
    object dstLeaveCreditsleavetype_code: TStringField
      FieldName = 'leavetype_code'
      FixedChar = True
      Size = 3
    end
    object dstLeaveCreditsleave_credits: TBCDField
      FieldName = 'leave_credits'
      DisplayFormat = '###0.0000;-;-'
      Precision = 6
    end
    object dstLeaveCreditsemployee: TStringField
      FieldName = 'employee'
      ReadOnly = True
      Size = 102
    end
  end
  object dscLeaveCredits: TDataSource
    DataSet = dstLeaveCredits
    Left = 240
    Top = 24
  end
end
