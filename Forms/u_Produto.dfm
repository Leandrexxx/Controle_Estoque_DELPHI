inherited frmProduto: TfrmProduto
  Caption = 'CADASTRO DE PRODUTOS'
  ClientHeight = 348
  ExplicitHeight = 377
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 72
    Top = 80
    Width = 41
    Height = 13
    Caption = 'C'#211'DIGO'
    FocusControl = dbeCodigo
  end
  object Label2: TLabel [1]
    Left = 72
    Top = 120
    Width = 114
    Height = 13
    Caption = 'PRODUTO_DESCRICAO'
    FocusControl = dbeProduto
  end
  object Label3: TLabel [2]
    Left = 72
    Top = 160
    Width = 70
    Height = 13
    Caption = 'VALOR CUSTO'
    FocusControl = dbeCusto
  end
  object Label4: TLabel [3]
    Left = 240
    Top = 160
    Width = 69
    Height = 13
    Caption = 'VALOR VENDA'
    FocusControl = dbeVenda
  end
  object Label5: TLabel [4]
    Left = 408
    Top = 160
    Width = 47
    Height = 13
    Caption = 'ESTOQUE'
    FocusControl = dbeEstoque
  end
  object Label6: TLabel [5]
    Left = 576
    Top = 160
    Width = 89
    Height = 13
    Caption = 'ESTOQUE MIN'#205'MO'
    FocusControl = dbeEstoqueMinimo
  end
  object Label7: TLabel [6]
    Left = 72
    Top = 208
    Width = 45
    Height = 13
    Caption = 'UNIDADE'
  end
  object Label8: TLabel [7]
    Left = 194
    Top = 80
    Width = 55
    Height = 13
    Caption = 'CADASTRO'
    FocusControl = dbeCadastro
  end
  object Label9: TLabel [8]
    Left = 148
    Top = 208
    Width = 113
    Height = 13
    Caption = 'CODIGO FORNECEDOR'
    FocusControl = dbeCodFornecedor
  end
  object Label10: TLabel [9]
    Left = 299
    Top = 205
    Width = 29
    Height = 13
    Caption = 'NOME'
    FocusControl = dbeFornecedor
  end
  inherited Panel1: TPanel
    TabOrder = 10
  end
  inherited Panel2: TPanel
    Top = 285
    TabOrder = 11
    inherited DBNavigator1: TDBNavigator
      Hints.Strings = ()
    end
  end
  inherited btnCancelar: TBitBtn
    TabOrder = 12
  end
  inherited btnAtualizar: TBitBtn
    TabOrder = 13
  end
  inherited btnPesquisar: TBitBtn
    TabOrder = 14
  end
  inherited btnSair: TBitBtn
    TabOrder = 15
  end
  object dbeCodigo: TDBEdit [16]
    Left = 72
    Top = 96
    Width = 105
    Height = 21
    DataField = 'ID_PRODUTO'
    DataSource = dsPadrao
    TabOrder = 0
  end
  object dbeProduto: TDBEdit [17]
    Left = 72
    Top = 136
    Width = 654
    Height = 21
    CharCase = ecUpperCase
    DataField = 'PRODUTO_DESCRICAO'
    DataSource = dsPadrao
    TabOrder = 2
  end
  object dbeCusto: TDBEdit [18]
    Left = 72
    Top = 176
    Width = 150
    Height = 21
    DataField = 'VL_CUSTO'
    DataSource = dsPadrao
    TabOrder = 3
  end
  object dbeVenda: TDBEdit [19]
    Left = 240
    Top = 176
    Width = 150
    Height = 21
    DataField = 'VL_VENDA'
    DataSource = dsPadrao
    TabOrder = 4
  end
  object dbeEstoque: TDBEdit [20]
    Left = 408
    Top = 176
    Width = 150
    Height = 21
    DataField = 'ESTOQUE'
    DataSource = dsPadrao
    TabOrder = 5
  end
  object dbeEstoqueMinimo: TDBEdit [21]
    Left = 576
    Top = 176
    Width = 150
    Height = 21
    DataField = 'ESTOQUE_MIN'
    DataSource = dsPadrao
    TabOrder = 6
  end
  object dbeCadastro: TDBEdit [22]
    Left = 194
    Top = 96
    Width = 134
    Height = 21
    DataField = 'CADASTRO'
    DataSource = dsPadrao
    Enabled = False
    TabOrder = 1
  end
  object dbeCodFornecedor: TDBEdit [23]
    Left = 148
    Top = 224
    Width = 134
    Height = 21
    DataField = 'ID_FORNECEDOR'
    DataSource = dsPadrao
    TabOrder = 8
  end
  object dbeFornecedor: TDBEdit [24]
    Left = 299
    Top = 224
    Width = 427
    Height = 21
    CharCase = ecUpperCase
    DataField = 'NOME'
    DataSource = dsPadrao
    TabOrder = 9
  end
  object dbcUnidade: TDBComboBox [25]
    Left = 73
    Top = 224
    Width = 57
    Height = 21
    DataField = 'UNIDADE'
    DataSource = dsPadrao
    Items.Strings = (
      'KG'
      'ML'
      'PCT'
      'P'#199
      'LT'
      'UN'
      'CX')
    TabOrder = 7
  end
  inherited qryPadrao: TFDQuery
    SQL.Strings = (
      'select A.ID_PRODUTO,'
      '       A.PRODUTO_DESCRICAO,      '
      '       A.VL_CUSTO,'
      '       A.VL_VENDA,'
      '       A.ESTOQUE,'
      '       A.ESTOQUE_MIN,'
      '       A.UNIDADE,'
      '       A.CADASTRO,'
      '       A.ID_FORNECEDOR,'
      '       B.NOME '
      'FROM PRODUTO A, FORNECEDOR B'
      'WHERE A.ID_PRODUTO = B.ID_FORNECEDOR')
    Left = 744
    object qryPadraoID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryPadraoPRODUTO_DESCRICAO: TStringField
      FieldName = 'PRODUTO_DESCRICAO'
      Origin = 'PRODUTO_DESCRICAO'
      Required = True
      Size = 100
    end
    object qryPadraoVL_CUSTO: TFMTBCDField
      FieldName = 'VL_CUSTO'
      Origin = 'VL_CUSTO'
      Required = True
      currency = True
      Precision = 18
      Size = 2
    end
    object qryPadraoVL_VENDA: TFMTBCDField
      FieldName = 'VL_VENDA'
      Origin = 'VL_VENDA'
      Required = True
      currency = True
      Precision = 18
      Size = 2
    end
    object qryPadraoESTOQUE: TFMTBCDField
      FieldName = 'ESTOQUE'
      Origin = 'ESTOQUE'
      Required = True
      Precision = 18
      Size = 2
    end
    object qryPadraoESTOQUE_MIN: TFMTBCDField
      FieldName = 'ESTOQUE_MIN'
      Origin = 'ESTOQUE_MIN'
      Required = True
      Precision = 18
      Size = 2
    end
    object qryPadraoUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'UNIDADE'
      Size = 6
    end
    object qryPadraoCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
    object qryPadraoID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
      Origin = 'ID_FORNECEDOR'
      Required = True
    end
    object qryPadraoNOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
  end
  inherited dsPadrao: TDataSource
    Left = 744
  end
end
