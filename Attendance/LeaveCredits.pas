unit LeaveCredits;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseGridDetail, Data.DB, RzButton,
  Vcl.StdCtrls, Vcl.Mask, RzEdit, Vcl.Grids, Vcl.DBGrids, RzDBGrid, RzLabel,
  Vcl.ExtCtrls, RzPanel;

type
  TfrmLeaveCredits = class(TfrmBaseGridDetail)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLeaveCredits: TfrmLeaveCredits;

implementation

{$R *.dfm}

end.
