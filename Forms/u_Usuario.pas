unit u_Usuario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, u_Padrao, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask;

type
  TfrmUsuario = class(TfrmPadrao)
    qryPadraoID_USUARIO: TIntegerField;
    qryPadraoNOME: TStringField;
    qryPadraoSENHA: TStringField;
    qryPadraoTIPO: TStringField;
    qryPadraoCADASTRO: TDateField;
    Label1: TLabel;
    dbCodigo: TDBEdit;
    Label2: TLabel;
    dbNome: TDBEdit;
    Label3: TLabel;
    dbSenha: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    dbCadastro: TDBEdit;
    cbTipo: TDBComboBox;
    procedure btnNovoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmUsuario: TfrmUsuario;

implementation

{$R *.dfm}

procedure TfrmUsuario.btnNovoClick(Sender: TObject);
begin
  inherited;
  dbCadastro.Text:=DateToStr(now);
  dbNome.SetFocus;
end;

end.
