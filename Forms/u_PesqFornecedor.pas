unit u_PesqFornecedor;

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
  TfrmPesqFornecedor = class(TfrmPesquisaPadrao)
    qryPesqPadraoID_FORNECEDOR: TIntegerField;
    qryPesqPadraoNOME: TStringField;
    qryPesqPadraoENDERECO: TStringField;
    qryPesqPadraoNUMERO: TIntegerField;
    qryPesqPadraoBAIRRO: TStringField;
    qryPesqPadraoCIDADE: TStringField;
    qryPesqPadraoUF: TStringField;
    qryPesqPadraoCEP: TStringField;
    qryPesqPadraoTELEFONE: TStringField;
    qryPesqPadraoCNPJ: TStringField;
    qryPesqPadraoEMAIL: TStringField;
    qryPesqPadraoCADASTRO: TDateField;
    dataSetPesqFornecedor: TfrxDBDataset;
    relDbFornecedor: TfrxReport;
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
  frmPesqFornecedor: TfrmPesqFornecedor;

implementation

{$R *.dfm}

procedure TfrmPesqFornecedor.btnImprimirClick(Sender: TObject);
var caminho : string; //CRIA UMA VARIAVEL

begin
  //ABRE RELATÓRIO
  caminho:=ExtractFilePath(Application.ExeName);

  //VALIDAÇÃO SE ENCONTRAR OU NÃO O RELATÓRIO
  if frmPesqFornecedor.relDbFornecedor.LoadFromFile(caminho + 'relFornecedor.fr3') then
  begin
    relDbFornecedor.Clear;//LIMPA RELATORIO
    relDbFornecedor.LoadFromFile(extractfilepath(application.ExeName)+ 'relFornecedor.fr3');
    relDbFornecedor.PrepareReport(true);
    relDbFornecedor.ShowPreparedReport;
  end
  else
  Messagedlg('Relatorio não encontrado',mtError,[mbOk],0);



end;

procedure TfrmPesqFornecedor.btnPesquisarClick(Sender: TObject);
begin
  qryPesqPadrao.Close;//FECHA
  qryPesqPadrao.SQL.Add('');//LIMPA
  qryPesqPadrao.Params.Clear;//LIMPA OS PARAMETROS
  qryPesqPadrao.SQL.Clear;//LIMPA O SQL
  qryPesqPadrao.SQL.Add('SELECT ID_FORNECEDOR, '
  + 'NOME ,'
  + 'ENDERECO ,'
  + 'NUMERO ,'
  + 'BAIRRO ,'
  + 'CIDADE ,'
  + 'UF , '
  + 'CEP ,'
  + 'TELEFONE ,'
  + 'CNPJ ,'
  + 'EMAIL ,'
  + 'CADASTRO '
  + 'FROM FORNECEDOR'); //ADD SQL

  case cbChavePesquisa.ItemIndex of
  0:begin//PESQUISA POR CODIGO
    qryPesqPadrao.SQL.Add('WHERE ID_FORNECEDOR=:PID_FORNECEDOR'); //CRIAMOS O PARAMETRO
    qryPesqPadrao.ParamByName('PID_FORNECEDOR').AsString:=edtnome.Text;//APONTA PARA O CAMPO DO PARAMETRO
    end;

     1:begin//PESQUISA POR NOME
    qryPesqPadrao.SQL.ADD('WHERE NOME LIKE :PNOME'); //CRIAMOS O PARAMETRO
    qryPesqPadrao.ParamByName('PNOME').AsString:= '%' + edtnome.Text + '%';//APONTA PARA O CAMPO DO PARAMETRO
    end;

    2:begin//PESQUISA POR DATA
    qryPesqPadrao.SQL.Add('WHERE CADASTRO =:PCADASTRO');
    qryPesqPadrao.ParamByName('PCADASTRO').AsDate:=strTodate(mkInicio.Text);
    end;

    3:begin//PESQUISA POR PERIODO
    qryPesqPadrao.SQL.Add('WHERE CADASTRO BETWEEN :PINICIO AND :PFIM');
    qryPesqPadrao.ParamByName('PINICIO').AsDate:=strTodate(mkInicio.Text);
    qryPesqPadrao.ParamByName('PFIM').AsDate:=strTodate(mkFim.Text);
    end;

    4:begin//PESQUISA POR TODOS
    qryPesqPadrao.SQL.Add('ORDER BY ID_FORNECEDOR');
    end;

  end;

  qryPesqPadrao.Open;//ABRIMOS A QUERY, MOSTRA O RESULTADO DA CONSULTA

  if qryPesqPadrao.IsEmpty then //SE NADA FOR ENCONTRADO MOSTRA A MENSAGEM ABAIXO
  begin
    Messagedlg('Registro não encontrando!',MtInformation,[mbOk],0);
  end
  else
  abort;


end;


procedure TfrmPesqFornecedor.btnTransferirClick(Sender: TObject);
begin

   if qryPesqPadrao.RecordCount > 0 then
  begin
    codigo:=qryPesqPadraoID_FORNECEDOR.AsInteger;
  end
  else
  abort;

end;

procedure TfrmPesqFornecedor.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  btnTransferir.Click;
end;

end.
