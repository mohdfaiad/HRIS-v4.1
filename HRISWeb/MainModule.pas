unit MainModule;

interface

uses
  uniGUIMainModule, SysUtils, Classes, User, Data.DB, Data.Win.ADODB;

type
  TUniMainModule = class(TUniGUIMainModule)
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
    procedure UniGUIMainModuleDestroy(Sender: TObject);
    procedure MainConnectionBeforeConnect(Sender: TObject);
  private
    { Private declarations }
    FUser: TUser;
  public
    { Public declarations }
    property User: TUser read FUser write FUser;
    procedure ExecuteQuery(const AQuery: string);
  end;

function UniMainModule: TUniMainModule;

implementation

{$R *.dfm}

uses
  UniGUIVars, ServerModule, uniGUIApplication, ConnUtil;

function UniMainModule: TUniMainModule;
begin
  Result := TUniMainModule(UniApplication.UniMainModule);
end;

procedure TUniMainModule.ExecuteQuery(const AQuery: string);
begin
  MainConnection.Execute(AQuery);
end;

procedure TUniMainModule.MainConnectionBeforeConnect(Sender: TObject);
begin
  MainConnection.ConnectionString := GetConnection('','','');
end;

procedure TUniMainModule.UniGUIMainModuleDestroy(Sender: TObject);
begin
  FUser.Free;
end;

initialization
  RegisterMainModuleClass(TUniMainModule);
end.
