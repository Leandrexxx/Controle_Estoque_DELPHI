unit u_PesqCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, u_FormPesquisaPadrao, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask, Vcl.ExtCtrls;

type
  TfrmPesqCliente = class(TfrmPesquisaPadrao)
    qryPesqPadraoID_CLIENTE: TIntegerField;
    qryPesqPadraoNOME: TStringField;
    qryPesqPadraoENDERECO: TStringField;
    qryPesqPadraoNUMERO: TIntegerField;
    qryPesqPadraoBAIRRO: TStringField;
    qryPesqPadraoCIDADE: TStringField;
    qryPesqPadraoUF: TStringField;
    qryPesqPadraoCEP: TStringField;
    qryPesqPadraoTELEFONE: TStringField;
    qryPesqPadraoCPF: TStringField;
    qryPesqPadraoCADASTRO: TDateField;
    procedure btnPesquisarClick(Sender: TObject);
    procedure btnTransferirClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPesqCliente: TfrmPesqCliente;

implementation

{$R *.dfm}

procedure TfrmPesqCliente.btnPesquisarClick(Sender: TObject);
begin
  qryPesqPadrao.Close;//FECHA
  qryPesqPadrao.SQL.Add('');//LIMPA
  qryPesqPadrao.Params.Clear;//LIMPA OS PARAMETROS
  qryPesqPadrao.SQL.Clear;//LIMPA O SQL
  qryPesqPadrao.SQL.Add('SELECT ID_CLIENTE, '
  + 'NOME ,'
  + 'ENDERECO ,'
  + 'NUMERO ,'
  + 'BAIRRO ,'
  + 'CIDADE ,'
  + 'UF , '
  + 'CEP ,'
  + 'TELEFONE ,'
  + 'CPF ,'
  + 'CADASTRO '
  + 'FROM CLIENTE'); //ADD SQL

  case cbChavePesquisa.ItemIndex of
  0:begin//PESQUISA POR CODIGO
    qryPesqPadrao.SQL.Add('WHERE ID_CLIENTE=:PID_CLIENTE'); //CRIAMOS O PARAMETRO
    qryPesqPadrao.ParamByName('PID_CLIENTE').AsString:=edtnome.Text;//APONTA PARA O CAMPO DO PARAMETRO
    end;

     1:begin//PESQUISA POR NOME
    qryPesqPadrao.SQL.ADD('WHERE NOME LIKE :PNOME'); //CRIAMOS O PARAMETRO
    qryPesqPadrao.ParamByName('PNOME').AsString:= '%' +edtnome.Text + '%';//APONTA PARA O CAMPO DO PARAMETRO
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
    qryPesqPadrao.SQL.Add('ORDER BY ID_CLIENTE');
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

procedure TfrmPesqCliente.btnTransferirClick(Sender: TObject);
begin

  if qryPesqPadrao.RecordCount > 0 then
  begin
    codigo:=qryPesqPadraoID_CLIENTE.AsInteger;
  end
  else
  abort;
end;

procedure TfrmPesqCliente.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  btnTransferir.Click;
end;

end.
