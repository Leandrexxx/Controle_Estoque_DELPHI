inherited frmFormaPgto: TfrmFormaPgto
  Caption = 'CADASTRO DE FORMAS DE PAGAMENTO'
  ClientHeight = 328
  ExplicitHeight = 357
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 64
    Top = 96
    Width = 41
    Height = 13
    Caption = 'C'#211'DIGO'
    FocusControl = dbeCodigo
  end
  object Label2: TLabel [1]
    Left = 64
    Top = 136
    Width = 59
    Height = 13
    Caption = 'DESCRICAO'
    FocusControl = dbeDescricao
  end
  object Label3: TLabel [2]
    Left = 216
    Top = 96
    Width = 55
    Height = 13
    Caption = 'CADASTRO'
    FocusControl = dbeCadastro
  end
  inherited Panel2: TPanel
    Top = 265
    ExplicitTop = 265
    inherited DBNavigator1: TDBNavigator
      Hints.Strings = ()
    end
  end
  object dbeCodigo: TDBEdit [9]
    Left = 64
    Top = 112
    Width = 134
    Height = 21
    DataField = 'ID_FORMA_PGTO'
    DataSource = dsPadrao
    TabOrder = 6
  end
  object dbeDescricao: TDBEdit [10]
    Left = 64
    Top = 152
    Width = 600
    Height = 21
    CharCase = ecUpperCase
    DataField = 'DESCRICAO'
    DataSource = dsPadrao
    TabOrder = 7
  end
  object dbeCadastro: TDBEdit [11]
    Left = 216
    Top = 112
    Width = 134
    Height = 21
    DataField = 'CADASTRO'
    DataSource = dsPadrao
    Enabled = False
    TabOrder = 8
  end
  inherited qryPadrao: TFDQuery
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_ID_FORMA_PGTO'
    UpdateOptions.AutoIncFields = 'ID_FORMA_PGTO'
    SQL.Strings = (
      'SELECT ID_FORMA_PGTO,'
      '       DESCRICAO,'
      '       CADASTRO'
      'FROM FORMA_PGTO'
      'ORDER BY ID_FORMA_PGTO')
    object qryPadraoID_FORMA_PGTO: TIntegerField
      FieldName = 'ID_FORMA_PGTO'
      Origin = 'ID_FORMA_PGTO'
      ProviderFlags = [pfInWhere, pfInKey]
      Required = True
    end
    object qryPadraoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Required = True
      Size = 100
    end
    object qryPadraoCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
  end
end
