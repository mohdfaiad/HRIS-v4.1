unit AddressAndContact;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseForm, Vcl.StdCtrls, Vcl.DBCtrls,
  RzDBEdit, Vcl.Mask, RzEdit, Vcl.ExtCtrls, RzPanel, RzCmboBx, RzDBCmbo, RzButton,
  RzRadChk, RzDBChk;

type
  TfrmAddressAndContact = class(TfrmBase)
    RzGroupBox2: TRzGroupBox;
    RzGroupBox1: TRzGroupBox;
    RzDBEdit1: TRzDBEdit;
    RzDBEdit2: TRzDBEdit;
    RzDBEdit3: TRzDBEdit;
    RzGroupBox3: TRzGroupBox;
    RzGroupBox4: TRzGroupBox;
    RzDBEdit8: TRzDBEdit;
    RzDBEdit10: TRzDBEdit;
    RzDBEdit11: TRzDBEdit;
    RzDBEdit12: TRzDBEdit;
    RzDBMemo1: TRzDBMemo;
    RzDBEdit4: TRzDBEdit;
    RzDBMemo2: TRzDBMemo;
    RzDBEdit5: TRzDBEdit;
    RzDBLookupComboBox2: TRzDBLookupComboBox;
    RzDBLookupComboBox1: TRzDBLookupComboBox;
    RzDBMemo3: TRzDBMemo;
    RzDBCheckBox1: TRzDBCheckBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
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
  EmployeeData, FormsUtil;

procedure TfrmAddressAndContact.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  OpenDropdownDataSources(self,false);
end;

procedure TfrmAddressAndContact.FormCreate(Sender: TObject);
begin
  inherited;
  OpenDropdownDataSources(self);
end;

end.
