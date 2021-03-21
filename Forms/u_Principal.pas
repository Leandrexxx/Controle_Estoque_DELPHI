unit u_Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtCtrls, Vcl.ComCtrls,
  Vcl.Menus, u_Usuario, u_Empresa;

type
  TfrmPrincipal = class(TForm)
    Panel1: TPanel;
    btnUsuario: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    SpeedButton10: TSpeedButton;
    StatusBar1: TStatusBar;
    Timer1: TTimer;
    MainMenu1: TMainMenu;
    Cadastro1: TMenuItem;
    Usurio1: TMenuItem;
    Empresa1: TMenuItem;
    Clientes1: TMenuItem;
    Fornecedores1: TMenuItem;
    Produtos1: TMenuItem;
    FormasdePagamento1: TMenuItem;
    Movimentos1: TMenuItem;
    Compras1: TMenuItem;
    Vendas1: TMenuItem;
    Relatrios1: TMenuItem;
    ListaUsurios1: TMenuItem;
    ListaFornecedores1: TMenuItem;
    ListaClientes1: TMenuItem;
    ListaProdutos1: TMenuItem;
    ListaCompras1: TMenuItem;
    ListaVendas1: TMenuItem;
    Sobreosistema1: TMenuItem;
    procedure Timer1Timer(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure btnUsuarioClick(Sender: TObject);
    procedure AbreTelaUsuario();
    procedure SpeedButton2Click(Sender: TObject);
    procedure AbreTelaEmpresa();
    procedure Usurio1Click(Sender: TObject);
    procedure Empresa1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.SpeedButton10Click(Sender: TObject);
begin
  if messagedlg('Deseja realmente sair do sistema?',mtConfirmation,[mbOk,mbNo],0)=mrOk then
  begin
    Application.Terminate;
  end
  else
  begin
    abort;
  end;


end;

procedure TfrmPrincipal.SpeedButton2Click(Sender: TObject);
begin
  AbreTelaEmpresa;
end;

procedure TfrmPrincipal.AbreTelaEmpresa;
begin
  frmEmpresa:=TfrmEmpresa.Create(self);
  frmEmpresa.ShowModal;
  try

  finally
    frmEmpresa.Free;
    frmEmpresa:=nil;//LIMPANDO A MEMORIA
  end;
end;

procedure TfrmPrincipal.AbreTelaUsuario;
begin
  frmUsuario:=TfrmUsuario.Create(self);
  frmUsuario.ShowModal;
  try

  finally
    frmUsuario.Free;
    frmUsuario:=nil;
  end;
end;

procedure TfrmPrincipal.btnUsuarioClick(Sender: TObject);
begin
  AbreTelaUsuario;
end;

procedure TfrmPrincipal.Empresa1Click(Sender: TObject);
begin
  AbreTelaEmpresa;
end;

procedure TfrmPrincipal.Timer1Timer(Sender: TObject);
begin
  //insere dados no status bar
  Statusbar1.Panels[0].Text:=DateTostr(now);
  Statusbar1.Panels[1].Text:=TimeTostr(now);
  Statusbar1.Panels[2].Text:=' SEJA BEM VINDO AO SISTEMA';

end;

procedure TfrmPrincipal.Usurio1Click(Sender: TObject);
begin
  AbreTelaUsuario;
end;

end.
