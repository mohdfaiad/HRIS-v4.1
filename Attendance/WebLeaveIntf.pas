unit WebLeaveIntf;

interface

uses
  PayrollCode, System.Generics.Collections;

type
  IWebLeave = interface
    ['{E4851BF3-930B-46C8-BC42-852F2A2F3B87}']
    procedure ApproveLeave;
    procedure DisapproveLeave;
    procedure RetrievePendingEntitlements(const APayrollCode: TPayrollCode);

    function GetPayrollCodes: TObjectList<TPayrollCode>;
  end;

implementation

end.
