unit TimelogPayPeriodHRIS;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, TimelogPayPeriod, Vcl.StdCtrls,
  Vcl.Mask, RzEdit, RzBtnEdt, Vcl.ExtCtrls, Vcl.Grids, RzGrids, RzCmboBx,
  RzPanel, RzLabel;

type
  TfrmTimelogPayPeriodHRIS = class(TfrmTimelogPayPeriod)
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses
  TimeLogData;

procedure TfrmTimelogPayPeriodHRIS.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  dmTimeLog.Free;
end;

procedure TfrmTimelogPayPeriodHRIS.FormCreate(Sender: TObject);
begin
  dmTimeLog := TdmTimeLog.Create(self);
  inherited;
end;

end.
