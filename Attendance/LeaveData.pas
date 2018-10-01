unit LeaveData;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
  TdmLeave = class(TDataModule)
    dstLeaves: TADODataSet;
    dstLeaveCredits: TADODataSet;
  private
    { Private declarations }
    FConnection: TADOConnection;
    procedure SetConnection;
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); overload; override;
    constructor Create(AOwner: TComponent; AConnection: TADOConnection); reintroduce; overload;
  end;

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

end.
