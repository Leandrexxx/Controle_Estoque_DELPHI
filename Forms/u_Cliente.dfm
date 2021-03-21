inherited frmCliente: TfrmCliente
  Caption = 'CADASTRO DE CLIENTE'
  ClientHeight = 404
  ExplicitHeight = 433
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 64
    Top = 72
    Width = 41
    Height = 13
    Caption = 'C'#211'DIGO'
    FocusControl = dbeCodigo
  end
  object Label2: TLabel [1]
    Left = 64
    Top = 112
    Width = 29
    Height = 13
    Caption = 'NOME'
    FocusControl = dbeNome
  end
  object Label3: TLabel [2]
    Left = 64
    Top = 152
    Width = 54
    Height = 13
    Caption = 'ENDERECO'
    FocusControl = dbeEndereco
  end
  object Label5: TLabel [3]
    Left = 64
    Top = 192
    Width = 39
    Height = 13
    Caption = 'BAIRRO'
    FocusControl = dbeBairro
  end
  object Label6: TLabel [4]
    Left = 64
    Top = 232
    Width = 38
    Height = 13
    Caption = 'CIDADE'
    FocusControl = dbeCidade
  end
  object Label7: TLabel [5]
    Left = 632
    Top = 233
    Width = 13
    Height = 13
    Caption = 'UF'
    FocusControl = DBEdit7
  end
  object Label8: TLabel [6]
    Left = 64
    Top = 272
    Width = 19
    Height = 13
    Caption = 'CEP'
    FocusControl = dbeCep
  end
  object Label10: TLabel [7]
    Left = 216
    Top = 72
    Width = 55
    Height = 13
    Caption = 'CADASTRO'
    FocusControl = dbeCadastro
  end
  object Label11: TLabel [8]
    Left = 291
    Top = 272
    Width = 50
    Height = 13
    Caption = 'TELEFONE'
    FocusControl = dbeTelefone
  end
  object Label12: TLabel [9]
    Left = 484
    Top = 272
    Width = 19
    Height = 13
    Caption = 'CPF'
    FocusControl = dbeCPF
  end
  object Label4: TLabel [10]
    Left = 579
    Top = 152
    Width = 43
    Height = 13
    Caption = 'NUMERO'
    FocusControl = dbeTelefone
  end
  inherited Panel1: TPanel
    TabOrder = 11
  end
  inherited Panel2: TPanel
    Top = 341
    TabOrder = 12
    ExplicitTop = 341
    inherited DBNavigator1: TDBNavigator
      Hints.Strings = ()
    end
  end
  inherited btnCancelar: TBitBtn
    TabOrder = 13
  end
  inherited btnAtualizar: TBitBtn
    TabOrder = 14
  end
  inherited btnPesquisar: TBitBtn
    TabOrder = 15
  end
  inherited btnSair: TBitBtn
    TabOrder = 16
  end
  object dbeCodigo: TDBEdit [17]
    Left = 64
    Top = 88
    Width = 134
    Height = 21
    DataField = 'ID_CLIENTE'
    DataSource = dsPadrao
    TabOrder = 0
  end
  object dbeNome: TDBEdit [18]
    Left = 64
    Top = 128
    Width = 600
    Height = 21
    DataField = 'NOME'
    DataSource = dsPadrao
    TabOrder = 2
  end
  object dbeEndereco: TDBEdit [19]
    Left = 64
    Top = 168
    Width = 500
    Height = 21
    DataField = 'ENDERECO'
    DataSource = dsPadrao
    TabOrder = 3
  end
  object dbeNumero: TDBEdit [20]
    Left = 579
    Top = 168
    Width = 85
    Height = 21
    DataField = 'NUMERO'
    DataSource = dsPadrao
    TabOrder = 4
  end
  object dbeBairro: TDBEdit [21]
    Left = 64
    Top = 208
    Width = 600
    Height = 21
    DataField = 'BAIRRO'
    DataSource = dsPadrao
    TabOrder = 5
  end
  object dbeCidade: TDBEdit [22]
    Left = 64
    Top = 248
    Width = 553
    Height = 21
    DataField = 'CIDADE'
    DataSource = dsPadrao
    TabOrder = 6
  end
  object DBEdit7: TDBEdit [23]
    Left = 632
    Top = 248
    Width = 30
    Height = 21
    DataField = 'UF'
    DataSource = dsPadrao
    TabOrder = 7
  end
  object dbeCep: TDBEdit [24]
    Left = 64
    Top = 288
    Width = 212
    Height = 21
    DataField = 'CEP'
    DataSource = dsPadrao
    TabOrder = 8
  end
  object dbeCadastro: TDBEdit [25]
    Left = 216
    Top = 88
    Width = 134
    Height = 21
    DataField = 'CADASTRO'
    DataSource = dsPadrao
    Enabled = False
    TabOrder = 1
  end
  object dbeTelefone: TDBEdit [26]
    Left = 291
    Top = 288
    Width = 180
    Height = 21
    DataField = 'TELEFONE'
    DataSource = dsPadrao
    TabOrder = 9
  end
  object dbeCPF: TDBEdit [27]
    Left = 484
    Top = 288
    Width = 180
    Height = 21
    DataField = 'CPF'
    DataSource = dsPadrao
    TabOrder = 10
  end
  inherited qryPadrao: TFDQuery
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_ID_CLIENTE'
    UpdateOptions.AutoIncFields = 'ID_CLIENTE'
    SQL.Strings = (
      'SELECT ID_CLIENTE,'
      '       NOME,'
      '       ENDERECO, '
      '       NUMERO,'
      '       BAIRRO,'
      '       CIDADE,'
      '       UF,'
      '       CEP,'
      '       TELEFONE,'
      '       CPF,'
      '       CADASTRO       '
      'FROM CLIENTE'
      'ORDER BY ID_CLIENTE')
    Left = 688
    Top = 136
    object qryPadraoID_CLIENTE: TFDAutoIncField
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
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
    object qryPadraoCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
    object qryPadraoTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      Required = True
      EditMask = '!\(999\)0000-0000;0;_'
      Size = 16
    end
    object qryPadraoCPF: TStringField
      FieldName = 'CPF'
      Origin = 'CPF'
      Required = True
      EditMask = '000\.000\.000\.00;0;_'
      Size = 16
    end
  end
  inherited dsPadrao: TDataSource
    Left = 688
    Top = 192
  end
end
