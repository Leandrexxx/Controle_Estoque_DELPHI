unit u_Produto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, u_Padrao, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask;

type
  TfrmProduto = class(TfrmPadrao)
    qryPadraoID_PRODUTO: TIntegerField;
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
    procedure btnNovoClick(Sender: TObject);
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

end.
