unit u_Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtCtrls, Vcl.ComCtrls,
  Vcl.Menus, u_Usuario, u_Empresa, u_Cliente, u_Fornecedor, u_Produto,
  u_FormaPgto, u_Compra;

type
  TfrmPrincipal = class(TForm)
    Panel1: TPanel;
    btnUsuario: TSpeedButton;
    btnEmpresa: TSpeedButton;
    btnCliente: TSpeedButton;
    btnFornecedor: TSpeedButton;
    btnProduto: TSpeedButton;
    btnFormaPgto: TSpeedButton;
    btnCompra: TSpeedButton;
    btnVenda: TSpeedButton;
    btnTrocarUsuario: TSpeedButton;
    btnFechar: TSpeedButton;
    StatusBar1: TStatusBar;
    Timer1: TTimer;
    MainMenu1: TMainMenu;
    Cadastro1: TMenuItem;
    menuUsuario: TMenuItem;
    menuEmpresa: TMenuItem;
    menuCliente: TMenuItem;
    menuFornecedores: TMenuItem;
    menuProdutos: TMenuItem;
    menuFormaPgto: TMenuItem;
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
    procedure btnFecharClick(Sender: TObject);
    procedure btnUsuarioClick(Sender: TObject);
    procedure AbreTelaUsuario();
    procedure btnEmpresaClick(Sender: TObject);
    procedure AbreTelaEmpresa();
    procedure menuUsuarioClick(Sender: TObject);
    procedure menuEmpresaClick(Sender: TObject);
    procedure btnClienteClick(Sender: TObject);
    procedure AbreTelaCliente();
    procedure menuClienteClick(Sender: TObject);
    procedure btnFornecedorClick(Sender: TObject);
    procedure AbreTelaFornecedor();
    procedure menuFornecedoresClick(Sender: TObject);
    procedure btnProdutoClick(Sender: TObject);
    procedure AbreTelaProduto();
    procedure menuProdutosClick(Sender: TObject);
    procedure btnFormaPgtoClick(Sender: TObject);
    procedure AbreTelaFormaPgto();
    procedure menuFormaPgtoClick(Sender: TObject);
    procedure btnCompraClick(Sender: TObject);
    Procedure AbreTelaCompra();
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.btnFecharClick(Sender: TObject);
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

procedure TfrmPrincipal.btnEmpresaClick(Sender: TObject);
begin
  AbreTelaEmpresa;
end;

procedure TfrmPrincipal.btnClienteClick(Sender: TObject);
begin
  AbreTelaCliente;
end;

procedure TfrmPrincipal.btnCompraClick(Sender: TObject);
begin
  AbreTelaCompra;
end;

procedure TfrmPrincipal.btnFormaPgtoClick(Sender: TObject);
begin
  AbreTelaFormaPgto;
end;

procedure TfrmPrincipal.btnFornecedorClick(Sender: TObject);
begin
  AbreTelaFornecedor;
end;

procedure TfrmPrincipal.btnProdutoClick(Sender: TObject);
begin
  AbreTelaProduto;
end;

procedure TfrmPrincipal.AbreTelaCliente;
begin
  frmCliente:=TfrmCliente.Create(self);
  frmCliente.ShowModal;
  try

  finally
    frmCliente.Free;
    frmCliente:=nil;//LIMPANDO A MEMORIA
  end;
end;

procedure TfrmPrincipal.AbreTelaCompra;
begin
  frmCompra:=TfrmCOmpra.Create(self);
  frmCompra.ShowModal;
  try

  finally
    frmCompra.Free;
    frmCompra:=nil;
  end;
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

procedure TfrmPrincipal.AbreTelaFormaPgto;
begin
  frmFormaPgto:=TfrmFormaPgto.create(self);
  frmFormaPgto.ShowModal;
  try

  finally
    frmFormaPgto.Free;
    frmFormaPgto:=nil;
  end;
end;

procedure TfrmPrincipal.AbreTelaFornecedor;
begin
  frmFornecedor:=TfrmFornecedor.Create(self); //O FORM ESTA CRIANDO E RECEBENDO ELE MESMO
  frmFornecedor.ShowModal; //NO SHOW MODAL SÓ PODE MEXER NA TELA QUE ESTA ABERTA
  try

  finally
    frmFornecedor.Free;
    frmFornecedor:=nil;
  end;
end;

procedure TfrmPrincipal.AbreTelaProduto;
begin
  frmProduto:=TfrmProduto.create(self);
  frmProduto.ShowModal;
  try

  finally
    frmProduto.Free;
    frmProduto:=nil;
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

procedure TfrmPrincipal.menuClienteClick(Sender: TObject);
begin
  AbreTelaCliente;
end;

procedure TfrmPrincipal.menuEmpresaClick(Sender: TObject);
begin
  AbreTelaEmpresa;
end;

procedure TfrmPrincipal.menuFormaPgtoClick(Sender: TObject);
begin
  AbreTelaFormaPgto;
end;

procedure TfrmPrincipal.menuFornecedoresClick(Sender: TObject);
begin
  AbreTelaFornecedor;
end;

procedure TfrmPrincipal.menuProdutosClick(Sender: TObject);
begin
  AbreTelaProduto;
end;

procedure TfrmPrincipal.Timer1Timer(Sender: TObject);
begin
  //insere dados no status bar
  Statusbar1.Panels[0].Text:=DateTostr(now);
  Statusbar1.Panels[1].Text:=TimeTostr(now);
  Statusbar1.Panels[2].Text:=' SEJA BEM VINDO AO SISTEMA';

end;

procedure TfrmPrincipal.menuUsuarioClick(Sender: TObject);
begin
  AbreTelaUsuario;
end;

end.
