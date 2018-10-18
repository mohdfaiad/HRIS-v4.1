unit LeaveData;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB, LeaveDataMethodsIntf;

type
  TdmLeave = class(TDataModule,ILeaveDataMethods)
    dstLeaves: TADODataSet;
    dstLeaveCredits: TADODataSet;
    dscLeaveCredits: TDataSource;
    dstLeaveCreditsyear: TIntegerField;
    dstLeaveCreditsid_num: TStringField;
    dstLeaveCreditsleavetype_code: TStringField;
    dstLeaveCreditsleave_credits: TBCDField;
    dstLeaveCreditsemployee: TStringField;
    procedure dstLeaveCreditsAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
    FConnection: TADOConnection;
    procedure SetConnection;
  public
    { Public declarations }
    procedure GetLeaveCredits(const AIdNumber: string; const AYear: integer);
    procedure Sort(ADataSet: TDataSet; const AFieldName: string);

    constructor Create(AOwner: TComponent); overload; override;
    constructor Create(AOwner: TComponent; AConnection: TADOConnection); reintroduce; overload;
  end;

var
  dmLeave: TdmLeave;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

uses
  AppData;

{ TdmLeave }

constructor TdmLeave.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

constructor TdmLeave.Create(AOwner: TComponent; AConnection: TADOConnection);
begin
  inherited Create(AOwner);
  FConnection := AConnection;
  SetConnection;
end;

procedure TdmLeave.dstLeaveCreditsAfterOpen(DataSet: TDataSet);
begin
  dstLeaveCredits.Properties['Unique Table'].Value := 'LeaveCredit';
end;

procedure TdmLeave.GetLeaveCredits(const AIdNumber: string; const AYear: integer);
begin
  with dstLeaveCredits do
  begin
    Close;
    Filter := '';
    Parameters.ParamByName('@id_num').Value := AIdNumber;
    Parameters.ParamByName('@year').Value := AYear;
    Open;
  end;
end;

procedure TdmLeave.SetConnection;
var
  i: integer;
begin
  for i := 0 to ComponentCount - 1 do
  begin
    if Components[i] is TADODataSet then
      (Components[i] as TADODataSet).Connection := FConnection;
  end;
end;

procedure TdmLeave.Sort(ADataSet: TDataSet; const AFieldName: string);
begin
  with (ADataSet as TADODataSet) do
  begin
    if Sort = AFieldName then IndexFieldNames := AFieldName + ' DESC'
    else Sort := AFieldName;
  end;
end;

end.
