unit u_Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtCtrls, Vcl.ComCtrls,
  Vcl.Menus;

type
  TfrmPrincipal = class(TForm)
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
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
  Application.Terminate;
end;

procedure TfrmPrincipal.Timer1Timer(Sender: TObject);
begin
  //insere dados no status bar
  Statusbar1.Panels[0].Text:=DateTostr(now);
  Statusbar1.Panels[1].Text:=TimeTostr(now);
  Statusbar1.Panels[2].Text:=' SEJA BEM VINDO AO SISTEMA';

end;

end.
