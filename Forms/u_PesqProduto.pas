unit u_PesqProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, u_FormPesquisaPadrao, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask, Vcl.ExtCtrls,
  frxClass, frxDBSet;

type
  TfrmPesqProduto = class(TfrmPesquisaPadrao)
    qryPesqPadraoID_PRODUTO: TIntegerField;
    qryPesqPadraoPRODUTO_DESCRICAO: TStringField;
    qryPesqPadraoVL_CUSTO: TFMTBCDField;
    qryPesqPadraoVL_VENDA: TFMTBCDField;
    qryPesqPadraoESTOQUE: TFMTBCDField;
    qryPesqPadraoESTOQUE_MIN: TFMTBCDField;
    qryPesqPadraoUNIDADE: TStringField;
    qryPesqPadraoID_FORNECEDOR: TIntegerField;
    qryPesqPadraoCADASTRO: TDateField;
    qryPesqPadraoNOME: TStringField;
    relPesqProduto: TfrxReport;
    dataSetPesqProduto: TfrxDBDataset;
    procedure btnPesquisarClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure btnTransferirClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPesqProduto: TfrmPesqProduto;

implementation

{$R *.dfm}

procedure TfrmPesqProduto.btnImprimirClick(Sender: TObject);
var caminho : string; //CRIA UMA VARIAVEL

begin
  //ABRE RELATÓRIO
  caminho:=ExtractFilePath(Application.ExeName);

  //VALIDAÇÃO SE ENCONTRAR OU NÃO O RELATÓRIO
  if frmPesqProduto.relPesqProduto.LoadFromFile(caminho + 'relProduto.fr3') then
  begin
    relPesqProduto.Clear;//LIMPA RELATORIO
    relPesqProduto.LoadFromFile(extractfilepath(application.ExeName)+ 'relProduto.fr3');
    relPesqProduto.PrepareReport(true);
    relPesqProduto.ShowPreparedReport;
  end
  else
  Messagedlg('Relatorio não encontrado',mtError,[mbOk],0);
end;

procedure TfrmPesqProduto.btnPesquisarClick(Sender: TObject);
begin
 qryPesqPadrao.Close; // fecha
 qryPesqPadrao.SQL.Add(''); // limpa
 qryPesqPadrao.Params.Clear;  //limpamos os parametros
 qryPesqPadrao.SQL.Clear;  // limPa o sql
 qryPesqPadrao.SQL.Add('SELECT A.ID_PRODUTO, '
                       +'A.PRODUTO_DESCRICAO,'
                       +'A.VL_CUSTO,         '
                       +'A.VL_VENDA,         '
                       +'A.ESTOQUE,          '
                       +'A.ESTOQUE_MIN,      '
                       +'A.UNIDADE,          '
                       +'A.ID_FORNECEDOR,    '
                       +'B.NOME,             '
                       +'A.CADASTRO          '
                       +'FROM PRODUTO A      '
                       +'INNER JOIN FORNECEDOR B ON B.ID_FORNECEDOR = A.ID_FORNECEDOR');
   //OPÇÕES DE PESQUISA
 case cbChavePesquisa.ItemIndex of
     0:begin// pesquisa por codigo
     qryPesqPadrao.SQL.Add('WHERE A.ID_PRODUTO =:PID_PRODUTO'); // criamos o parametro
     qryPesqPadrao.ParamByName('PID_PRODUTO').AsString:=edtNome.Text; // aponta para o campo do parametro

     end;

      1:begin // pesquisa por nome
      qryPesqPadrao.SQL.Add('WHERE A.PRODUTO_DESCRICAO LIKE :PDESCRICAO'); // criamos o parametro
      qryPesqPadrao.ParamByName('PDESCRICAO').AsString:= '%' +edtNome.Text + '%'; // aponta para o campo do parametro

     end;

    2:begin// pesquisa por dadta
     qryPesqPadrao.SQL.Add('WHERE A.CADASTRO =:PCADASTRO');
     qryPesqPadrao.ParamByName('PCADASTRO').AsDate:=strTodate(mkInicio.Text);
    end;


    3:begin// pesquisa por periodo
     qryPesqPadrao.SQL.Add('WHERE A.CADASTRO BETWEEN :PINICIO AND :PFIM');
     qryPesqPadrao.ParamByName('PINICIO').AsDate:=strTodate(mkInicio.Text);
     qryPesqPadrao.ParamByName('PFIM').AsDate:=strTodate(mkFim.Text);
    end;


    4:begin
    qryPesqPadrao.SQL.Add('WHERE A.ID_FORNECEDOR =:PID_FORNECEDOR'); // criamos o parametro
    qryPesqPadrao.ParamByName('PID_FORNECEDOR').AsString:=edtNome.Text;

    end;

    5:begin
       qryPesqPadrao.SQL.Add('ORDER BY A.ID_PRODUTO');

    end;

 end;

 // abre a query mostra o resultado
  qryPesqPadrao.Open;

 // Mostra a quantidade de registros encontrados
    //lbResultado.Caption:=' Total de Registros Localizados:   ' +
    //IntTostr(Q_pesq_padrao.recordcount);

 // se nada for encontrado mostra a msg
    if qryPesqPadrao.IsEmpty then
    begin
      Messagedlg('Registro não encontrado!',MtInformation,[mbOk],0);
    end
    else
    abort;

end;

procedure TfrmPesqProduto.btnTransferirClick(Sender: TObject);
begin
  if qryPesqPadrao.RecordCount > 0 then
  begin
    codigo:=qryPesqPadraoID_PRODUTO.AsInteger;
  end
  else
  abort;


end;

procedure TfrmPesqProduto.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  btnTransferir.Click;
end;

end.
