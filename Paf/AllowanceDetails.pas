unit AllowanceDetails;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BasePopupDetail2, RzButton,
  Vcl.StdCtrls, RzLabel, Vcl.Imaging.pngimage, Vcl.ExtCtrls, RzPanel, RzDBEdit,
  Vcl.Mask, RzEdit, Vcl.DBCtrls, RzDBCmbo, PafController;

type
  TfrmAllowanceDetails = class(TfrmBasePopupDetail2)
    RzDBLookupComboBox5: TRzDBLookupComboBox;
    RzDBNumericEdit1: TRzDBNumericEdit;
    RzDBDateTimeEdit1: TRzDBDateTimeEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    Controller: TPafController;
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); overload; override;
    constructor Create(AOwner: TComponent; const AController: TPafController); reintroduce; overload;
  protected
    function ValidEntry: boolean; override;
  end;

implementation

{$R *.dfm}

uses
  PafData;

{ TfrmAllowanceDetails }

constructor TfrmAllowanceDetails.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

constructor TfrmAllowanceDetails.Create(AOwner: TComponent;
  const AController: TPafController);
begin
  inherited Create(AOwner);
  Controller := AController;
end;

procedure TfrmAllowanceDetails.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  // inherited;
  // Do not remove as this will close the dropdown sources.
  // Source is used in the main window
end;

function TfrmAllowanceDetails.ValidEntry: boolean;
var
  error: string;
begin
  error := Controller.CheckAllowance;

  Result := error = '';

  if not Result then lblError.Caption := error;
end;

end.
