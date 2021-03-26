unit u_Fornecedor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, u_Padrao, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask, u_PesqFornecedor;

type
  TfrmFornecedor = class(TfrmPadrao)
    qryPadraoID_FORNECEDOR: TFDAutoIncField;
    qryPadraoNOME: TStringField;
    qryPadraoENDERECO: TStringField;
    qryPadraoNUMERO: TIntegerField;
    qryPadraoBAIRRO: TStringField;
    qryPadraoCIDADE: TStringField;
    qryPadraoUF: TStringField;
    qryPadraoCEP: TStringField;
    qryPadraoTELEFONE: TStringField;
    qryPadraoCNPJ: TStringField;
    qryPadraoEMAIL: TStringField;
    qryPadraoCADASTRO: TDateField;
    Label1: TLabel;
    dbeCodigo: TDBEdit;
    Label2: TLabel;
    dbeNome: TDBEdit;
    Label3: TLabel;
    dbeEndereco: TDBEdit;
    Label4: TLabel;
    dbeNumero: TDBEdit;
    Label5: TLabel;
    dbeBairro: TDBEdit;
    Label6: TLabel;
    dbeCidade: TDBEdit;
    Label7: TLabel;
    dbeUF: TDBEdit;
    Label8: TLabel;
    dbeCep: TDBEdit;
    Label9: TLabel;
    dbeTelefone: TDBEdit;
    Label10: TLabel;
    dbeCnpj: TDBEdit;
    Label11: TLabel;
    dbeEmail: TDBEdit;
    Label12: TLabel;
    dbeCadastro: TDBEdit;
    procedure btnNovoClick(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFornecedor: TfrmFornecedor;

implementation

{$R *.dfm}

procedure TfrmFornecedor.btnNovoClick(Sender: TObject);
begin
  inherited;
  dbeCadastro.Text:=DateToStr(now);
  dbeNome.SetFocus;
end;

procedure TfrmFornecedor.btnPesquisarClick(Sender: TObject);
begin
  frmPesqFornecedor:=TfrmPesqFornecedor.Create(self);
  frmPesqFornecedor.ShowModal;
  try
  if frmPesqFornecedor.codigo > 0 then
    begin
      qryPadrao.open;
      qryPadrao.Locate('ID_FORNECEDOR', frmPesqFornecedor.codigo,[]);
    end;
  finally
  frmPesqFornecedor.Free;
  frmPesqFornecedor:=nil;
  end;

end;

end.
