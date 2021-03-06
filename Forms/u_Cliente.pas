unit u_Cliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, u_Padrao, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask, u_PesqCliente;

type
  TfrmCliente = class(TfrmPadrao)
    qryPadraoID_CLIENTE: TFDAutoIncField;
    qryPadraoNOME: TStringField;
    qryPadraoENDERECO: TStringField;
    qryPadraoNUMERO: TIntegerField;
    qryPadraoBAIRRO: TStringField;
    qryPadraoCIDADE: TStringField;
    qryPadraoUF: TStringField;
    qryPadraoCEP: TStringField;
    qryPadraoCADASTRO: TDateField;
    Label1: TLabel;
    dbeCodigo: TDBEdit;
    Label2: TLabel;
    dbeNome: TDBEdit;
    Label3: TLabel;
    dbeEndereco: TDBEdit;
    dbeNumero: TDBEdit;
    Label5: TLabel;
    dbeBairro: TDBEdit;
    Label6: TLabel;
    dbeCidade: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    dbeCep: TDBEdit;
    Label10: TLabel;
    dbeCadastro: TDBEdit;
    qryPadraoTELEFONE: TStringField;
    qryPadraoCPF: TStringField;
    Label11: TLabel;
    dbeTelefone: TDBEdit;
    Label12: TLabel;
    dbeCPF: TDBEdit;
    Label4: TLabel;
    procedure btnNovoClick(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCliente: TfrmCliente;

implementation

{$R *.dfm}

procedure TfrmCliente.btnNovoClick(Sender: TObject);
begin
  inherited;
  dbeCadastro.Text:=DateToStr(now);
  dbeNome.SetFocus;
end;

procedure TfrmCliente.btnPesquisarClick(Sender: TObject);
begin
  frmPesqCliente:=TfrmPesqCliente.Create(self);
  frmPesqCliente.ShowModal;
  try
    if frmPesqCliente.codigo > 0 then
    begin
      qryPadrao.open;
      qryPadrao.Locate('ID_CLIENTE', frmPesqCLiente.codigo,[]);
    end;
  finally
    frmPesqCliente.Free;
    frmPesqCliente:=nil;
  end;

end;

end.
