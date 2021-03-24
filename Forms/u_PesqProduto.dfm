inherited frmPesqProduto: TfrmPesqProduto
  Caption = 'PESQUISA PRODUTO'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited cbChavePesquisa: TComboBox
      Items.Strings = (
        'C'#211'DIGO'
        'DESCRI'#199#195'O'
        'CADASTRO'
        'PER'#205'ODO'
        'FORNECEDOR'
        'TODOS')
    end
    inherited btnPesquisar: TBitBtn
      OnClick = btnPesquisarClick
    end
  end
  inherited DBGrid1: TDBGrid
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_PRODUTO'
        Title.Caption = 'CODIGO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRODUTO_DESCRICAO'
        Width = 300
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VL_CUSTO'
        Title.Caption = 'PRE'#199'O CUSTO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VL_VENDA'
        Title.Caption = 'PRE'#199'O VENDA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ESTOQUE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ESTOQUE_MIN'
        Title.Caption = 'ESTOQUE MINIMO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UNIDADE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ID_FORNECEDOR'
        Title.Caption = 'CODIGO FORNECEDOR'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CADASTRO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Width = 300
        Visible = True
      end>
  end
  inherited qryPesqPadrao: TFDQuery
    SQL.Strings = (
      'SELECT A.ID_PRODUTO,'
      '       A.PRODUTO_DESCRICAO,'
      '       A.VL_CUSTO,'
      '       A.VL_VENDA,'
      '       A.ESTOQUE,'
      '       A.ESTOQUE_MIN,'
      '       A.UNIDADE,'
      '       A.ID_FORNECEDOR,'
      '       A.CADASTRO,'
      '       B.NOME'
      'FROM PRODUTO A'
      'INNER JOIN FORNECEDOR B ON B.ID_FORNECEDOR = A.ID_FORNECEDOR')
    object qryPesqPadraoID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryPesqPadraoPRODUTO_DESCRICAO: TStringField
      FieldName = 'PRODUTO_DESCRICAO'
      Origin = 'PRODUTO_DESCRICAO'
      Required = True
      Size = 100
    end
    object qryPesqPadraoVL_CUSTO: TFMTBCDField
      FieldName = 'VL_CUSTO'
      Origin = 'VL_CUSTO'
      Required = True
      Precision = 18
      Size = 2
    end
    object qryPesqPadraoVL_VENDA: TFMTBCDField
      FieldName = 'VL_VENDA'
      Origin = 'VL_VENDA'
      Required = True
      Precision = 18
      Size = 2
    end
    object qryPesqPadraoESTOQUE: TFMTBCDField
      FieldName = 'ESTOQUE'
      Origin = 'ESTOQUE'
      Required = True
      Precision = 18
      Size = 2
    end
    object qryPesqPadraoESTOQUE_MIN: TFMTBCDField
      FieldName = 'ESTOQUE_MIN'
      Origin = 'ESTOQUE_MIN'
      Required = True
      Precision = 18
      Size = 2
    end
    object qryPesqPadraoUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'UNIDADE'
      Size = 6
    end
    object qryPesqPadraoID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
      Origin = 'ID_FORNECEDOR'
      Required = True
    end
    object qryPesqPadraoCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
    object qryPesqPadraoNOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
  end
end
