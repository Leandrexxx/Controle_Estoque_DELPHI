unit u_Compra;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, u_MovimentoPadrao, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Grids, Vcl.DBGrids, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.Mask, U_DM;

type
  TfrmCompra = class(TfrmPadraoMovimento)
    Label1: TLabel;
    dbeCodigo: TDBEdit;
    Label2: TLabel;
    dbeIdFornecedor: TDBEdit;
    Label3: TLabel;
    dbeFormaPgto: TDBEdit;
    Label4: TLabel;
    dbeNome: TDBEdit;
    Label5: TLabel;
    dbeDescricao: TDBEdit;
    Label6: TLabel;
    dbeCadastro: TDBEdit;
    Label7: TLabel;
    dbeUsuario: TDBEdit;
    Label8: TLabel;
    dbeValor: TDBEdit;
    qryPadraoItemID_SEQUENCIA: TIntegerField;
    qryPadraoItemID_COMPRA: TIntegerField;
    qryPadraoItemID_PRODUTO: TIntegerField;
    qryPadraoItemPRODUTO_DESCRICAO: TStringField;
    qryPadraoItemQTDE: TFMTBCDField;
    qryPadraoItemVL_CUSTO: TFMTBCDField;
    qryPadraoItemDESCONTO: TFMTBCDField;
    qryPadraoItemTOTAL_ITEM: TFMTBCDField;
    qryPadraoID_COMPRA: TFDAutoIncField;
    qryPadraoID_FORNECEDOR: TIntegerField;
    qryPadraoNOME: TStringField;
    qryPadraoDESCRICAO: TStringField;
    qryPadraoUSUARIO: TStringField;
    qryPadraoVALOR: TFMTBCDField;
    qryPadraoCADASTRO: TDateField;
    qryFornecedor: TFDQuery;
    qryFormaPgto: TFDQuery;
    qryPadraoID_FORMA_PGTO: TIntegerField;
    procedure btnNovoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnGravarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCompra: TfrmCompra;

implementation

{$R *.dfm}

procedure TfrmCompra.btnGravarClick(Sender: TObject);
begin
  inherited;
  qryPadrao.Refresh;
end;

procedure TfrmCompra.btnNovoClick(Sender: TObject);
begin
  inherited;
  qryPadrao.Open;
  qryFornecedor.Open;
  qryFormaPgto.Open;
  dbeCadastro.text:=DateToStr(now);
  dbeUsuario.Text:= 'Leandro';
  dbeValor.Text:=intTostr(0);
  dbeIdFornecedor.SetFocus;
end;

procedure TfrmCompra.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  qryFornecedor.Close;
  qryFormaPgto.Close;
end;

end.
