unit u_PesqUsuario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, u_FormPesquisaPadrao, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask, Vcl.ExtCtrls;

type
  TfrmPesqUsuarios = class(TfrmPesquisaPadrao)
    qryPesqPadraoID_USUARIO: TIntegerField;
    qryPesqPadraoNOME: TStringField;
    qryPesqPadraoTIPO: TStringField;
    qryPesqPadraoCADASTRO: TDateField;
    procedure btnPesquisarClick(Sender: TObject);
    procedure cbChavePesquisaChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPesqUsuarios: TfrmPesqUsuarios;

implementation

{$R *.dfm}

procedure TfrmPesqUsuarios.btnPesquisarClick(Sender: TObject);
begin
  qryPesqPadrao.Close;//FECHA
  qryPesqPadrao.SQL.Add('');//LIMPA
  qryPesqPadrao.Params.Clear;//LIMPA OS PARAMETROS
  qryPesqPadrao.SQL.Clear;//LIMPA O SQL
  qryPesqPadrao.SQL.Add('SELECT ID_USUARIO,NOME,TIPO,CADASTRO FROM USUARIO');//ADD SQL

  case cbChavePesquisa.ItemIndex of
  0:begin//PESQUISA POR CODIGO
    qryPesqPadrao.SQL.Add('WHERE ID_USUARIO=:PID_USUARIO'); //CRIAMOS O PARAMETRO
    qryPesqPadrao.ParamByName('PID_USUARIO').AsString:=edtnome.Text;//APONTA PARA O CAMPO DO PARAMETRO
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

    4:begin
    qryPesqPadrao.SQL.Add('ORDER BY ID_USUARIO');
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

procedure TfrmPesqUsuarios.cbChavePesquisaChange(Sender: TObject);
begin
  case cbChavePesquisa.ItemIndex of
  0:begin //PESQUISA PELO CODIGO
    edtNome.Visible:=true;
    edtNome.SetFocus;
    mkInicio.Visible:=false;
    mkFim.Visible:=false;
    lbNome.Visible:=true;
    lbInicio.Visible:=false;
    lbFim.Visible:=false;
    lbNome.Caption:='Digite o CÓDIGO';
    end;

    1:begin //PESQUISA O NOME
    edtNome.Visible:=true;
    edtNome.SetFocus;
    mkInicio.Visible:=false;
    mkFim.Visible:=false;
    lbNome.Visible:=true;
    lbInicio.Visible:=false;
    lbFim.Visible:=false;
    lbNome.Caption:='Digite o NOME';
    end;

    2:begin//AQUI PESQUISA POR DATA
    edtNome.Visible:=false;
    mkInicio.Visible:=true;
    mkInicio.SetFocus;
    mkFim.Visible:=false;
    lbNome.Visible:=false;
    lbInicio.Visible:=true;
    lbInicio.Caption:='Digite o DATA';
    lbFim.Visible:=False;
    end;

    3:begin//AQUI POR PERIODO
    edtNome.Visible:=false;
    mkInicio.Visible:=true;
    mkFim.Visible:=true;
    mkInicio.SetFocus;
    lbNome.Visible:=false;
    lbInicio.Visible:=true;
    lbFim.Visible:=false;
    lbInicio.Caption:='Digite o PERIODO';
    end;

    4:begin//AQUI POR PERIODO
    edtNome.Visible:=false;
    mkInicio.Visible:=false;
    mkFim.Visible:=false;
    lbNome.Visible:=false;
    lbInicio.Visible:=true;
    lbFim.Visible:=false;
    lbInicio.Caption:='MOSTRANDO TODOS OS REGISTROS';
    end;

  end;

end;

end.
