inherited frmFornecedor: TfrmFornecedor
  Caption = 'CADASTRO DE FORNECEDORES'
  ClientHeight = 460
  ExplicitTop = -32
  ExplicitHeight = 489
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 80
    Top = 96
    Width = 41
    Height = 13
    Caption = 'C'#211'DIGO'
    FocusControl = dbeCodigo
  end
  object Label2: TLabel [1]
    Left = 80
    Top = 136
    Width = 29
    Height = 13
    Caption = 'NOME'
    FocusControl = dbeNome
  end
  object Label3: TLabel [2]
    Left = 80
    Top = 176
    Width = 54
    Height = 13
    Caption = 'ENDERECO'
    FocusControl = dbeEndereco
  end
  object Label4: TLabel [3]
    Left = 595
    Top = 173
    Width = 43
    Height = 13
    Caption = 'NUMERO'
    FocusControl = dbeNumero
  end
  object Label5: TLabel [4]
    Left = 80
    Top = 216
    Width = 39
    Height = 13
    Caption = 'BAIRRO'
    FocusControl = dbeBairro
  end
  object Label6: TLabel [5]
    Left = 80
    Top = 256
    Width = 38
    Height = 13
    Caption = 'CIDADE'
    FocusControl = dbeCidade
  end
  object Label7: TLabel [6]
    Left = 632
    Top = 215
    Width = 13
    Height = 13
    Caption = 'UF'
    FocusControl = dbeUF
  end
  object Label8: TLabel [7]
    Left = 80
    Top = 296
    Width = 19
    Height = 13
    Caption = 'CEP'
    FocusControl = dbeCep
  end
  object Label9: TLabel [8]
    Left = 280
    Top = 293
    Width = 50
    Height = 13
    Caption = 'TELEFONE'
    FocusControl = dbeTelefone
  end
  object Label10: TLabel [9]
    Left = 480
    Top = 293
    Width = 25
    Height = 13
    Caption = 'CNPJ'
    FocusControl = dbeCnpj
  end
  object Label11: TLabel [10]
    Left = 80
    Top = 336
    Width = 30
    Height = 13
    Caption = 'EMAIL'
    FocusControl = dbeEmail
  end
  object Label12: TLabel [11]
    Left = 232
    Top = 96
    Width = 55
    Height = 13
    Caption = 'CADASTRO'
    FocusControl = dbeCadastro
  end
  inherited Panel1: TPanel
    TabOrder = 12
  end
  inherited Panel2: TPanel
    Top = 397
    TabOrder = 13
    ExplicitTop = 441
    inherited DBNavigator1: TDBNavigator
      Hints.Strings = ()
    end
  end
  inherited btnCancelar: TBitBtn
    TabOrder = 14
  end
  inherited btnAtualizar: TBitBtn
    TabOrder = 15
  end
  inherited btnPesquisar: TBitBtn
    TabOrder = 16
  end
  inherited btnSair: TBitBtn
    TabOrder = 17
  end
  object dbeCodigo: TDBEdit [18]
    Left = 80
    Top = 112
    Width = 134
    Height = 21
    DataField = 'ID_FORNECEDOR'
    DataSource = dsPadrao
    Enabled = False
    TabOrder = 0
  end
  object dbeNome: TDBEdit [19]
    Left = 80
    Top = 152
    Width = 600
    Height = 21
    CharCase = ecUpperCase
    DataField = 'NOME'
    DataSource = dsPadrao
    TabOrder = 2
  end
  object dbeEndereco: TDBEdit [20]
    Left = 80
    Top = 192
    Width = 497
    Height = 21
    CharCase = ecUpperCase
    DataField = 'ENDERECO'
    DataSource = dsPadrao
    TabOrder = 3
  end
  object dbeNumero: TDBEdit [21]
    Left = 595
    Top = 192
    Width = 85
    Height = 21
    DataField = 'NUMERO'
    DataSource = dsPadrao
    TabOrder = 4
  end
  object dbeBairro: TDBEdit [22]
    Left = 80
    Top = 231
    Width = 537
    Height = 21
    CharCase = ecUpperCase
    DataField = 'BAIRRO'
    DataSource = dsPadrao
    TabOrder = 5
  end
  object dbeCidade: TDBEdit [23]
    Left = 80
    Top = 272
    Width = 600
    Height = 21
    CharCase = ecUpperCase
    DataField = 'CIDADE'
    DataSource = dsPadrao
    TabOrder = 7
  end
  object dbeUF: TDBEdit [24]
    Left = 632
    Top = 231
    Width = 48
    Height = 21
    CharCase = ecUpperCase
    DataField = 'UF'
    DataSource = dsPadrao
    TabOrder = 6
  end
  object dbeCep: TDBEdit [25]
    Left = 80
    Top = 312
    Width = 180
    Height = 21
    DataField = 'CEP'
    DataSource = dsPadrao
    TabOrder = 8
  end
  object dbeTelefone: TDBEdit [26]
    Left = 280
    Top = 312
    Width = 180
    Height = 21
    DataField = 'TELEFONE'
    DataSource = dsPadrao
    TabOrder = 9
  end
  object dbeCnpj: TDBEdit [27]
    Left = 480
    Top = 312
    Width = 200
    Height = 21
    DataField = 'CNPJ'
    DataSource = dsPadrao
    TabOrder = 10
  end
  object dbeEmail: TDBEdit [28]
    Left = 80
    Top = 352
    Width = 600
    Height = 21
    CharCase = ecUpperCase
    DataField = 'EMAIL'
    DataSource = dsPadrao
    TabOrder = 11
  end
  object dbeCadastro: TDBEdit [29]
    Left = 232
    Top = 112
    Width = 134
    Height = 21
    DataField = 'CADASTRO'
    DataSource = dsPadrao
    Enabled = False
    TabOrder = 1
  end
  inherited qryPadrao: TFDQuery
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_ID_FORNECEDOR'
    UpdateOptions.AutoIncFields = 'ID_FORNECEDOR'
    SQL.Strings = (
      'SELECT ID_FORNECEDOR,'
      '       NOME,'
      '       ENDERECO, '
      '       NUMERO,'
      '       BAIRRO,'
      '       CIDADE,'
      '       UF,'
      '       CEP,'
      '       TELEFONE,'
      '       CNPJ,'
      '       EMAIL,'
      '       CADASTRO       '
      'FROM FORNECEDOR'
      'ORDER BY ID_FORNECEDOR')
    Left = 744
    Top = 128
    object qryPadraoID_FORNECEDOR: TFDAutoIncField
      FieldName = 'ID_FORNECEDOR'
      Origin = 'ID_FORNECEDOR'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qryPadraoNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 100
    end
    object qryPadraoENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Required = True
      Size = 100
    end
    object qryPadraoNUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Required = True
    end
    object qryPadraoBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Required = True
      Size = 100
    end
    object qryPadraoCIDADE: TStringField
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Required = True
      Size = 100
    end
    object qryPadraoUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      Required = True
      FixedChar = True
      Size = 2
    end
    object qryPadraoCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      Required = True
      EditMask = '00000\-999;0;_'
      Size = 16
    end
    object qryPadraoTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      Required = True
      EditMask = '!\(999\)0000-0000;0;_'
      Size = 16
    end
    object qryPadraoCNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      Required = True
      EditMask = '00\.000\.000\/0000\-00;0;_'
    end
    object qryPadraoEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Required = True
      Size = 100
    end
    object qryPadraoCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
  end
  inherited dsPadrao: TDataSource
    DataSet = qryPadrao
    Left = 744
    Top = 184
  end
end
