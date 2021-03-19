program Controle_estoque;

uses
  Vcl.Forms,
  u_Principal in '..\Forms\u_Principal.pas' {frmPrincipal},
  U_DM in '..\Forms\U_DM.pas' {DM: TDataModule},
  u_Padrao in '..\Forms\u_Padrao.pas' {frmPadrao},
  u_Usuario in '..\Forms\u_Usuario.pas' {frmUsuario};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TfrmPadrao, frmPadrao);
  Application.CreateForm(TfrmUsuario, frmUsuario);
  Application.Run;
end.
