program Controle_estoque;

uses
  Vcl.Forms,
  u_Principal in '..\Forms\u_Principal.pas' {frmPrincipal};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
