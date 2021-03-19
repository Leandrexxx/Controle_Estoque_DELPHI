unit u_Padrao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.DBCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, U_DM;

type
  TfrmPadrao = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    btnNovo: TBitBtn;
    btnDeletar: TBitBtn;
    btnEditar: TBitBtn;
    btnGravar: TBitBtn;
    btnCancelar: TBitBtn;
    btnAtualizar: TBitBtn;
    DBNavigator1: TDBNavigator;
    btnPesquisar: TBitBtn;
    qryPadrao: TFDQuery;
    dsPadrao: TDataSource;
    btnSair: TBitBtn;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnNovoClick(Sender: TObject);
    procedure btnDeletarClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnAtualizarClick(Sender: TObject);
    procedure Tratabotoes();
    procedure btnSairClick(Sender: TObject); //DESCLARANDO PROCEDURE DE TRATAMENTO DE BOTÕES
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPadrao: TfrmPadrao;

implementation

{$R *.dfm}

procedure TfrmPadrao.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmPadrao.btnAtualizarClick(Sender: TObject);
begin
  Tratabotoes;
  qryPadrao.Refresh;
  Messagedlg('Registro atualizado com sucesso!',mtInformation,[mbOk],0);
end;

procedure TfrmPadrao.btnCancelarClick(Sender: TObject);
begin
  Tratabotoes;
  qryPadrao.Cancel;
  Messagedlg('Ação cancelada pelo usuário!',mtInformation,[mbOk],0);
end;

procedure TfrmPadrao.btnDeletarClick(Sender: TObject);
begin
  Tratabotoes;
  if messagedlg('Deseja deletar este registro?', mtConfirmation,[mbOk,mbNo],0)=mrOk then
  begin
    qryPadrao.Delete;
    Messagedlg('Registro dletado com sucesso!',mtInformation,[mbOk],0);
    Tratabotoes;
  end
  else
  begin
  Tratabotoes;
    abort;
  end;

end;

procedure TfrmPadrao.btnEditarClick(Sender: TObject);
begin
  Tratabotoes;
  if messagedlg('Deseja editar este registro?', mtConfirmation,[mbOk,mbNo],0)=mrOk then
  begin
    qryPadrao.edit;
  end
  else
  begin
    Tratabotoes;
    abort;
  end;

end;

procedure TfrmPadrao.btnGravarClick(Sender: TObject);
begin
  Tratabotoes;
  qryPadrao.Post;
  Messagedlg('Registro salvo com sucesso!',mtInformation,[mbok],0);
end;

procedure TfrmPadrao.btnNovoClick(Sender: TObject);
begin
  qryPadrao.Open;
  Tratabotoes;
  qryPadrao.Append;
end;

procedure TfrmPadrao.FormKeyPress(Sender: TObject; var Key: Char);
begin
  //FAZ O ENTER TER A MESMA FUNÇÃO DO TAB (RECEITA DE BOLO, NÃO MUDA ESSE CODIGO)
  if key=#13 then
  begin
    key:=#0;
    Perform(wm_nextDlgCtl,0,0)
  end;
end;

procedure TfrmPadrao.Tratabotoes;
begin
  //HABILITA E DESABILITA BOTÕES
  //SE ESTA HABILITADO DESABILITA E SE ESTA DESABILITADO HABILITA.
  btnNovo.Enabled:=not btnNovo.Enabled;
  btnDeletar.Enabled:=not btnDeletar.Enabled;
  btnEditar.Enabled:=not btnEditar.Enabled;
  btnGravar.Enabled:=not btnGravar.Enabled;
  btnAtualizar.Enabled:=not btnAtualizar.Enabled;
end;

end.
