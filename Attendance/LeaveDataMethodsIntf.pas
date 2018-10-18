unit LeaveDataMethodsIntf;

interface

uses
  DB;

type
  ILeaveDataMethods = interface
    ['{65FBABF4-FD8E-402C-9A93-F35B71947D3C}']
    procedure GetLeaveCredits(const AIdNumber: string; const AYear: integer);
    procedure Sort(ADataSet: TDataSet; const AFieldName: string);
  end;

implementation

end.
