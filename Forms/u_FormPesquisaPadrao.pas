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
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    btnPesquisar: TBitBtn;
    btnTransferir: TBitBtn;
    btnImprimir: TBitBtn;
    qryPesqPadrao: TFDQuery;
    dsPesqPadrao: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPesquisaPadrao: TfrmPesquisaPadrao;

implementation

{$R *.dfm}

end.
