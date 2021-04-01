inherited frmCompra: TfrmCompra
  Caption = 'CADASTRO DE COMPRAS'
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel2: TPanel
    inherited DBNavigator1: TDBNavigator
      Hints.Strings = ()
    end
  end
  inherited Panel3: TPanel
    Height = 140
    ExplicitHeight = 140
    object Label1: TLabel
      Left = 32
      Top = 8
      Width = 41
      Height = 13
      Caption = 'C'#211'DIGO'
      FocusControl = dbeCodigo
    end
    object Label2: TLabel
      Left = 32
      Top = 48
      Width = 113
      Height = 13
      Caption = 'C'#211'DIGO FORNECEDOR'
      FocusControl = dbeIdFornecedor
    end
    object Label3: TLabel
      Left = 32
      Top = 88
      Width = 101
      Height = 13
      Caption = 'FORMA PAGAMENTO'
      FocusControl = dbeFormaPgto
    end
    object Label4: TLabel
      Left = 184
      Top = 48
      Width = 29
      Height = 13
      Caption = 'NOME'
      FocusControl = dbeNome
    end
    object Label5: TLabel
      Left = 184
      Top = 88
      Width = 59
      Height = 13
      Caption = 'DESCRICAO'
      FocusControl = dbeDescricao
    end
    object Label6: TLabel
      Left = 140
      Top = 8
      Width = 55
      Height = 13
      Caption = 'CADASTRO'
      FocusControl = dbeCadastro
    end
    object Label7: TLabel
      Left = 264
      Top = 8
      Width = 46
      Height = 13
      Caption = 'USUARIO'
      FocusControl = dbeUsuario
    end
    object Label8: TLabel
      Left = 536
      Top = 8
      Width = 33
      Height = 13
      Caption = 'VALOR'
      FocusControl = dbeValor
    end
    object dbeCodigo: TDBEdit
      Left = 32
      Top = 24
      Width = 90
      Height = 21
      DataField = 'ID_COMPRA'
      DataSource = dsPadrao
      TabOrder = 0
    end
    object dbeIdFornecedor: TDBEdit
      Left = 32
      Top = 64
      Width = 134
      Height = 21
      DataField = 'ID_FORNECEDOR'
      DataSource = dsPadrao
      TabOrder = 2
    end
    object dbeFormaPgto: TDBEdit
      Left = 32
      Top = 104
      Width = 134
      Height = 21
      DataField = 'ID_FORMA_PGTO'
      DataSource = dsPadrao
      TabOrder = 3
    end
    object dbeNome: TDBEdit
      Left = 184
      Top = 64
      Width = 500
      Height = 21
      DataField = 'NOME'
      DataSource = dsPadrao
      TabOrder = 4
    end
    object dbeDescricao: TDBEdit
      Left = 184
      Top = 104
      Width = 500
      Height = 21
      DataField = 'DESCRICAO'
      DataSource = dsPadrao
      TabOrder = 5
    end
    object dbeCadastro: TDBEdit
      Left = 140
      Top = 24
      Width = 103
      Height = 21
      DataField = 'CADASTRO'
      DataSource = dsPadrao
      TabOrder = 1
    end
    object dbeUsuario: TDBEdit
      Left = 264
      Top = 24
      Width = 250
      Height = 21
      DataField = 'USUARIO'
      DataSource = dsPadrao
      TabOrder = 6
    end
    object dbeValor: TDBEdit
      Left = 536
      Top = 24
      Width = 148
      Height = 21
      DataField = 'VALOR'
      DataSource = dsPadrao
      TabOrder = 7
    end
  end
  inherited Panel4: TPanel
    ExplicitTop = 388
  end
  inherited DBGrid1: TDBGrid
    Top = 193
    Height = 195
    DataSource = dsPadraoItem
  end
  inherited qryPadrao: TFDQuery
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_ID_COMPRA'
    UpdateOptions.AutoIncFields = 'ID_COMPRA'
    SQL.Strings = (
      'SELECT A.ID_COMPRA,'
      '       A.ID_FORNECEDOR,'
      '       B.NOME,'
      '       A.ID_FORMA_PGTO,'
      '       C.DESCRICAO,'
      '       A.USUARIO,'
      '       A.VALOR,'
      '       A.CADASTRO'
      'FROM COMPRA A, FORNECEDOR B, FORMA_PGTO C'
      'WHERE A.ID_FORNECEDOR = B.ID_FORNECEDOR'
      'AND C.ID_FORMA_PGTO = A.ID_FORMA_PGTO'
      'ORDER BY A.ID_COMPRA')
    object qryPadraoID_COMPRA: TFDAutoIncField
      FieldName = 'ID_COMPRA'
      Origin = 'ID_COMPRA'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
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
    object qryPadraoDESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object qryPadraoUSUARIO: TStringField
      FieldName = 'USUARIO'
      Origin = 'USUARIO'
      Required = True
      Size = 100
    end
    object qryPadraoVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      currency = True
      Precision = 18
      Size = 2
    end
    object qryPadraoCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
    object qryPadraoID_FORMA_PGTO: TIntegerField
      FieldName = 'ID_FORMA_PGTO'
      Origin = 'ID_FORMA_PGTO'
      Required = True
    end
  end
  inherited qryPadraoItem: TFDQuery
    MasterSource = dsPadrao
    MasterFields = 'ID_COMPRA'
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    SQL.Strings = (
      'SELECT A.ID_SEQUENCIA,'
      '       A.ID_COMPRA,'
      '       A.ID_PRODUTO,'
      '       B.PRODUTO_DESCRICAO,'
      '       A.QTDE,'
      '       A.VL_CUSTO,'
      '       A.DESCONTO,'
      '       A.TOTAL_ITEM'
      'FROM ITEM_COMPRA A, PRODUTO B'
      'WHERE A.ID_PRODUTO = B.ID_PRODUTO'
      'ORDER BY A.ID_SEQUENCIA')
    object qryPadraoItemID_SEQUENCIA: TIntegerField
      FieldName = 'ID_SEQUENCIA'
      Origin = 'ID_SEQUENCIA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryPadraoItemID_COMPRA: TIntegerField
      FieldName = 'ID_COMPRA'
      Origin = 'ID_COMPRA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryPadraoItemID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
      Required = True
    end
    object qryPadraoItemPRODUTO_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PRODUTO_DESCRICAO'
      Origin = 'PRODUTO_DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object qryPadraoItemQTDE: TFMTBCDField
      FieldName = 'QTDE'
      Origin = 'QTDE'
      Required = True
      Precision = 18
      Size = 2
    end
    object qryPadraoItemVL_CUSTO: TFMTBCDField
      FieldName = 'VL_CUSTO'
      Origin = 'VL_CUSTO'
      Required = True
      Precision = 18
      Size = 2
    end
    object qryPadraoItemDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
      Precision = 18
      Size = 2
    end
    object qryPadraoItemTOTAL_ITEM: TFMTBCDField
      FieldName = 'TOTAL_ITEM'
      Origin = 'TOTAL_ITEM'
      Required = True
      Precision = 18
      Size = 2
    end
  end
  object qryFornecedor: TFDQuery
    Connection = DM.conexao
    SQL.Strings = (
      'SELECT ID_FORNECEDOR, NOME'
      'FROM FORNECEDOR'
      'ORDER BY ID_FORNECEDOR')
    Left = 752
    Top = 104
  end
  object qryFormaPgto: TFDQuery
    Connection = DM.conexao
    SQL.Strings = (
      'SELECT ID_FORMA_PGTO,DESCRICAO'
      'FROM FORMA_PGTO'
      'ORDER BY ID_FORMA_PGTO')
    Left = 752
    Top = 56
  end
end
