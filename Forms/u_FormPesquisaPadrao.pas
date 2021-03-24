unit u_FormPesquisaPadrao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Mask, Vcl.StdCtrls, Vcl.ExtCtrls,
  U_DM, Data.DB, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Buttons, Vcl.Grids, Vcl.DBGrids;

type
  TfrmPesquisaPadrao = class(TForm)
    Panel1: TPanel;
    cbChavePesquisa: TComboBox;
    Label1: TLabel;
    edtNome: TEdit;
    mkInicio: TMaskEdit;
    mkFim: TMaskEdit;
    lbNome: TLabel;
    lbInicio: TLabel;
    lbFim: TLabel;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    btnPesquisar: TBitBtn;
    btnTransferir: TBitBtn;
    btnImprimir: TBitBtn;
    qryPesqPadrao: TFDQuery;
    dsPesqPadrao: TDataSource;
    procedure cbChavePesquisaChange(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPesquisaPadrao: TfrmPesquisaPadrao;

implementation

{$R *.dfm}

procedure TfrmPesquisaPadrao.cbChavePesquisaChange(Sender: TObject);
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
    edtNome.Clear;
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
    edtNome.Clear;
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
    mkInicio.Clear;
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
    mkInicio.Clear;
  end;

    4:begin//AQUI POR PERIODO
    edtNome.Visible:=false;
    mkInicio.Visible:=false;
    mkFim.Visible:=false;
    //mkInicio.SetFocus;
    lbNome.Visible:=true;
    lbInicio.Visible:=false;
    lbFim.Visible:=false;
    lbInicio.Caption:='MOSTRANDO TODOS OS REGISTROS';
    //mkInicio.Clear;
    end;

  end;
end;

procedure TfrmPesquisaPadrao.FormKeyPress(Sender: TObject; var Key: Char);
begin
  //HABILITA O ENTER PARA FAZER A MESMA FUNÇÃO DO TAB
  if key=#13 then
  begin
    key:=#0;
    Perform(wm_nextDlgCtl,0,0);
  end;

end;

end.
