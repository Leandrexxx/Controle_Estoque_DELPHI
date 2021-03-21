unit u_Empresa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, u_Padrao, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask;

type
  TfrmEmpresa = class(TfrmPadrao)
    qryPadraoID_EMPRESA: TIntegerField;
    qryPadraoRAZAO_SOCIAL: TStringField;
    qryPadraoN_FANTASIA: TStringField;
    qryPadraoENDERECO: TStringField;
    qryPadraoNUMERO: TIntegerField;
    qryPadraoBAIRRO: TStringField;
    qryPadraoCIDADE: TStringField;
    qryPadraoUF: TStringField;
    qryPadraoCEP: TStringField;
    qryPadraoTELEFONE: TStringField;
    qryPadraoCNPJ: TStringField;
    qryPadraoEMAIL: TStringField;
    qryPadraoLOGO: TBlobField;
    qryPadraoCADASTRO: TDateField;
    Label1: TLabel;
    dbeCodigo: TDBEdit;
    Label2: TLabel;
    dbeRazaoSocial: TDBEdit;
    Label3: TLabel;
    dbeNomeFantasia: TDBEdit;
    Label4: TLabel;
    dbeEndereco: TDBEdit;
    Label5: TLabel;
    dbeNumero: TDBEdit;
    Label6: TLabel;
    dbeBairro: TDBEdit;
    Label7: TLabel;
    dbeCidade: TDBEdit;
    Label8: TLabel;
    dbeUF: TDBEdit;
    Label9: TLabel;
    dbeCep: TDBEdit;
    Label10: TLabel;
    dbeTelefone: TDBEdit;
    Label11: TLabel;
    dbeCNPJ: TDBEdit;
    Label12: TLabel;
    dbeEmail: TDBEdit;
    Label13: TLabel;
    dbLogo: TDBImage;
    Label14: TLabel;
    dbeCadastro: TDBEdit;
    btnFoto: TBitBtn;
    btnClear: TBitBtn;
    OpenDialog1: TOpenDialog;
    procedure btnNovoClick(Sender: TObject);
    procedure btnFotoClick(Sender: TObject);
    procedure btnClearClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEmpresa: TfrmEmpresa;

implementation

{$R *.dfm}

procedure TfrmEmpresa.btnClearClick(Sender: TObject);
begin
  qryPadrao.Edit;//COLOCANDO A QUERY EM MODO DE EDIÇÃO
  qryPadraoLogo.AsVariant:=null;//A LOGO RECEBE O VALOR NULO
  qryPadrao.Refresh;//ATUALIZA
  Messagedlg('Imagem deletada com sucesso!',mtInformation,[mbOk],0);

end;

procedure TfrmEmpresa.btnFotoClick(Sender: TObject);
begin
  //INSERE FOTO
  qryPadrao.Edit;//COLOCANDO A QUERY EM MODO DE EDIÇÃO
  Opendialog1.Execute;//EXECUTA O OPENDIALOG
  dbLogo.Picture.LoadFromFile(openDialog1.FileName);//ABRINDO A JANELA PARA PROCURAR O ARQUIVO
  QryPadrao.Refresh;//ATUALIZA A QUERY
  Messagedlg('Imagem inserida com sucesso!',mtInformation,[mbOk],0);

end;

procedure TfrmEmpresa.btnNovoClick(Sender: TObject);
begin
  inherited;
  dbeCadastro.Text:=DateToStr(now);
  dbeRazaoSocial.SetFocus;
end;

end.
