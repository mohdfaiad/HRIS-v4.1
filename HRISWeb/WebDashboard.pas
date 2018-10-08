unit WebDashboard;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniLabel, uniGUIBaseClasses, uniPanel;

type
  TDashboardFrame = class(TUniFrame)
    HeaderPanel: TUniSimplePanel;
    UniLabel5: TUniLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}



end.
