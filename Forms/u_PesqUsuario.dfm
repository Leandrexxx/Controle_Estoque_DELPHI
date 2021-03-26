inherited frmPesqUsuarios: TfrmPesqUsuarios
  Caption = 'PESQUISA USU'#193'RIOS'
  ClientWidth = 1069
  ExplicitWidth = 1085
  ExplicitHeight = 539
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 1069
    ExplicitWidth = 1069
    inherited mkInicio: TMaskEdit
      Width = 118
      EditMask = '!99/99/0000;1;_'
      MaxLength = 10
      Text = '  /  /    '
      ExplicitWidth = 118
    end
    inherited mkFim: TMaskEdit
      Width = 118
      EditMask = '!99/99/0000;1;_'
      MaxLength = 10
      Text = '  /  /    '
      ExplicitWidth = 118
    end
    inherited btnPesquisar: TBitBtn
      OnClick = btnPesquisarClick
    end
    inherited btnTransferir: TBitBtn
      OnClick = btnTransferirClick
    end
  end
  inherited DBGrid1: TDBGrid
    Width = 1069
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_USUARIO'
        Title.Caption = 'C'#211'DIGO '
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TIPO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CADASTRO'
        Visible = True
      end>
  end
  inherited Panel2: TPanel
    Width = 1069
    ExplicitWidth = 1069
  end
  inherited qryPesqPadrao: TFDQuery
    SQL.Strings = (
      'SELECT '
      '      ID_USUARIO,'
      '      NOME,'
      '      TIPO,'
      '      CADASTRO'
      'FROM USUARIO'
      'ORDER BY ID_USUARIO')
    ParamData = <
      item
        Name = 'PID_CODIGO'
        ParamType = ptInput
      end
      item
        Name = 'PNOME'
        ParamType = ptInput
      end>
    object qryPesqPadraoID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
      Origin = 'ID_USUARIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryPesqPadraoNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 100
    end
    object qryPesqPadraoTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Required = True
      Size = 30
    end
    object qryPesqPadraoCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
  end
end
