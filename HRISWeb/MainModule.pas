unit MainModule;

interface

uses
  uniGUIMainModule, SysUtils, Classes, User, Data.DB, Data.Win.ADODB, WebLeaveIntf,
  PayrollCode, System.Generics.Collections;

type
  TUniMainModule = class(TUniGUIMainModule,IWebLeave)
    MainConnection: TADOConnection;
    dstUser: TADODataSet;
    dscForApproval: TDataSource;
    dstForApproval: TADODataSet;
    dstForApprovalentitlement: TWordField;
    dstForApprovaldt: TDateTimeField;
    dstForApprovalid_num: TStringField;
    dstForApprovallocation_code: TStringField;
    dstForApprovaltime_from: TStringField;
    dstForApprovaltime_until: TStringField;
    dstForApprovalreason: TStringField;
    dstForApprovalremarks: TStringField;
    dstForApprovalemployee_name: TStringField;
    dstForApprovaldt_f: TStringField;
    dstForApprovaltime_from_f: TStringField;
    dstForApprovaltime_until_f: TStringField;
    dstForApprovalleave_id: TIntegerField;
    dstForApprovaldepartment_code: TStringField;
    dstForApprovalpositiontype_code: TStringField;
    dstForApprovalapp_dt: TDateTimeField;
    dstForApprovalapp_dt_f: TStringField;
    dstForApprovalstatus: TStringField;
    dstForApprovalam_pm: TStringField;
    dstForApprovalemployee_location_code: TStringField;
    dstForApprovalam_pm_f: TStringField;
    dstForApprovalis_paid: TWordField;
    dstForApprovalis_paid_f: TStringField;
    dstForApprovalleave_type: TStringField;
    SyncConnection: TADOConnection;
    dstLeavesPending: TADODataSet;
    dscLeavesPending: TDataSource;
    dstLeavesApproved: TADODataSet;
    dscLeavesApproved: TDataSource;
    dstPayrollCodes: TADODataSet;
    dstLeavesApprovedleavetype_name: TStringField;
    dstLeavesApprovedpaid: TFMTBCDField;
    dstLeavesApprovedunpaid: TFMTBCDField;
    procedure UniGUIMainModuleDestroy(Sender: TObject);
    procedure MainConnectionBeforeConnect(Sender: TObject);
    procedure SyncConnectionBeforeConnect(Sender: TObject);
    procedure dstLeavesPendingBeforeOpen(DataSet: TDataSet);
    procedure dstLeavesApprovedBeforeOpen(DataSet: TDataSet);
  private
    { Private declarations }
    FUser: TUser;
  public
    { Public declarations }
    property User: TUser read FUser write FUser;
    procedure ExecuteQuery(const AQuery: string);

    procedure ApproveLeave;
    procedure DisapproveLeave;
    procedure RetrievePendingEntitlements(const APayrollCode: TPayrollCode);

    function GetPayrollCodes: TObjectList<TPayrollCode>;
  end;

function UniMainModule: TUniMainModule;

implementation

{$R *.dfm}

uses
  UniGUIVars, ServerModule, uniGUIApplication, ConnUtil, AttendanceUtils, DateUtils;

function UniMainModule: TUniMainModule;
begin
  Result := TUniMainModule(UniApplication.UniMainModule);
end;

procedure TUniMainModule.ApproveLeave;
var
  sql: string;
  leaveId: integer;
  locationCode: string;
  leaveDate: TDate;
begin
  with dstForApproval do
  begin
    leaveId := FieldByName('leave_id').AsInteger;
    locationCode := FieldByName('location_code').AsString;
    leaveDate := FieldByName('dt').AsDateTime;

    sql := 'exec dtr_approve_leave ' +
              IntToStr(leaveId) + ',' +
              QuotedStr(locationCode) + ',' +
              QuotedStr(FormatDateTime('yyyy/mm/dd',leaveDate)) + ',' +
              QuotedStr(FUser.UserId);

    ExecuteQuery(sql);

    Close;
    Open;
  end;
end;

procedure TUniMainModule.SyncConnectionBeforeConnect(Sender: TObject);
begin
  {$ifdef DEBUG}
  SyncConnection.ConnectionString := 'Provider=SQLOLEDB.1;Password=cnn;' +
                'Persist Security Info=False;' +
                'User ID=sa;Initial Catalog=HRISWeb' +
                ';Data Source=BRYAN-LENOVO\DEV' +
                ';Use Procedure for Prepare=1;' +
                'Auto Translate=True;Packet Size=4096;' +
                ';Use Encryption for Data=False;' +
                'Tag with column collation when possible=False;' +
                'MARS Connection=False;DataTypeCompatibility=0;' +
                'Trust Server Certificate=False';

  {$else}
  SyncConnection.ConnectionString := 'Provider=SQLOLEDB.1;Password=Dijd5?78;' +
                'Persist Security Info=False;' +
                'User ID=hris;Initial Catalog=HRISWeb' +
                ';Data Source=localhost' +
                ';Use Procedure for Prepare=1;' +
                'Auto Translate=True;Packet Size=4096;' +
                ';Use Encryption for Data=False;' +
                'Tag with column collation when possible=False;' +
                'MARS Connection=False;DataTypeCompatibility=0;' +
                'Trust Server Certificate=False';
  {$endif}
end;

procedure TUniMainModule.DisapproveLeave;
var
  sql: string;
  leaveId: integer;
  locationCode: string;
  leaveDate: TDate;
begin
  with dstForApproval do
  begin
    leaveId := FieldByName('leave_id').AsInteger;
    locationCode := FieldByName('location_code').AsString;
    leaveDate := FieldByName('dt').AsDateTime;

    sql := 'exec dtr_disapprove_leave ' +
              IntToStr(leaveId) + ',' +
              QuotedStr(locationCode) + ',' +
              QuotedStr(FormatDateTime('yyyy/mm/dd',leaveDate)) + ',' +
              QuotedStr(FUser.UserId);

    ExecuteQuery(sql);

    Close;
    Open;
  end;
end;

procedure TUniMainModule.dstLeavesApprovedBeforeOpen(DataSet: TDataSet);
var
  fd,td: TDate;
begin
  with (DataSet as TADODataSet).Parameters do
  begin
    GetDateParamsYear(YearOf(Now),fd,td);
    ParamByName('@id_num').Value := User.UserId;
    ParamByName('@from_date').Value := fd;
    ParamByName('@until_date').Value := td;
  end;
end;

procedure TUniMainModule.dstLeavesPendingBeforeOpen(DataSet: TDataSet);
begin
  (DataSet as TADODataSet).Parameters.ParamByName('@id_num').Value := User.UserId;
end;

procedure TUniMainModule.ExecuteQuery(const AQuery: string);
begin
  MainConnection.Execute(AQuery);
end;

function TUniMainModule.GetPayrollCodes: TObjectList<TPayrollCode>;
var
  payrollCode: TPayrollCode;
  codeList: TObjectList<TPayrollCode>;
begin
  codeList := TObjectList<TPayrollCode>.Create;
  with dstPayrollCodes do
  begin
    try
      Open;
      while not Eof do
      begin
        payrollCode := TPayrollCode.Create;

        payrollCode.Code := FieldByName('payroll_code').AsString;
        payrollCode.Period := FieldByName('payroll_period').AsString;
        payrollCode.DateFromStr := FieldByName('payroll_from').AsString;
        payrollCode.DateUntilStr := FieldByName('payroll_until').AsString;

        codeList.Add(payrollCode);

        Next;
      end;
    finally
      Close;
    end;
  end;

  Result := codeList;
end;

procedure TUniMainModule.MainConnectionBeforeConnect(Sender: TObject);
begin
  MainConnection.ConnectionString := GetConnection('','','');
end;

procedure TUniMainModule.RetrievePendingEntitlements(
  const APayrollCode: TPayrollCode);
begin
  with dstForApproval do
  begin
    Close;
    Parameters.ParamByName('@payroll_code').Value := APayrollCode.Code;
    Parameters.ParamByName('@id_num').Value := User.UserId;
    Open;
  end;
end;

procedure TUniMainModule.UniGUIMainModuleDestroy(Sender: TObject);
begin
  FUser.Free;
end;

initialization
  RegisterMainModuleClass(TUniMainModule);
end.
