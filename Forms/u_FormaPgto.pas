unit u_FormaPgto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, u_Padrao, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask;

type
  TfrmFormaPgto = class(TfrmPadrao)
    qryPadraoID_FORMA_PGTO: TIntegerField;
    qryPadraoDESCRICAO: TStringField;
    qryPadraoCADASTRO: TDateField;
    Label1: TLabel;
    dbeCodigo: TDBEdit;
    Label2: TLabel;
    dbeDescricao: TDBEdit;
    Label3: TLabel;
    dbeCadastro: TDBEdit;
    procedure btnNovoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFormaPgto: TfrmFormaPgto;

implementation

{$R *.dfm}

procedure TfrmFormaPgto.btnNovoClick(Sender: TObject);
begin
  inherited;
  dbeCadastro.Text:= DateToStr(now);
  dbeDescricao.SetFocus;
end;

end.
