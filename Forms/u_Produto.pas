unit u_Produto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, u_Padrao, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask, u_PesqProduto;

type
  TfrmProduto = class(TfrmPadrao)
    qryPadraoPRODUTO_DESCRICAO: TStringField;
    qryPadraoVL_CUSTO: TFMTBCDField;
    qryPadraoVL_VENDA: TFMTBCDField;
    qryPadraoESTOQUE: TFMTBCDField;
    qryPadraoESTOQUE_MIN: TFMTBCDField;
    qryPadraoUNIDADE: TStringField;
    qryPadraoCADASTRO: TDateField;
    qryPadraoID_FORNECEDOR: TIntegerField;
    qryPadraoNOME: TStringField;
    Label1: TLabel;
    dbeCodigo: TDBEdit;
    Label2: TLabel;
    dbeProduto: TDBEdit;
    Label3: TLabel;
    dbeCusto: TDBEdit;
    Label4: TLabel;
    dbeVenda: TDBEdit;
    Label5: TLabel;
    dbeEstoque: TDBEdit;
    Label6: TLabel;
    dbeEstoqueMinimo: TDBEdit;
    Label7: TLabel;
    Label8: TLabel;
    dbeCadastro: TDBEdit;
    Label9: TLabel;
    dbeCodFornecedor: TDBEdit;
    Label10: TLabel;
    dbeFornecedor: TDBEdit;
    dbcUnidade: TDBComboBox;
    qryPadraoID_PRODUTO: TIntegerField;
    procedure btnNovoClick(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmProduto: TfrmProduto;

implementation

{$R *.dfm}

procedure TfrmProduto.btnNovoClick(Sender: TObject);
begin
  inherited;
  dbeCadastro.Text:= DateToStr(now);
  dbeCodigo.SetFocus;

end;

procedure TfrmProduto.btnPesquisarClick(Sender: TObject);
begin
  frmPesqProduto:=TfrmPesqProduto.Create(self);
  frmPesqProduto.ShowModal;
  try
    if frmPesqProduto.codigo > 0 then
    begin
      qryPadrao.open;
      qryPadrao.Locate('ID_Produto', frmPesqProduto.codigo,[]);
    end;
  finally
  frmPesqProduto.Free;
  frmPesqProduto:=nil;
  end;

end;

procedure TfrmProduto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  qryPadrao.Close;
end;

end.
