inherited frmUsuario: TfrmUsuario
  Caption = 'CADASTRO DE USU'#193'RIOS'
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 96
    Top = 96
    Width = 41
    Height = 13
    Caption = 'C'#211'DIGO'
    FocusControl = dbCodigo
  end
  object Label2: TLabel [1]
    Left = 96
    Top = 136
    Width = 29
    Height = 13
    Caption = 'NOME'
    FocusControl = dbNome
  end
  object Label3: TLabel [2]
    Left = 96
    Top = 184
    Width = 33
    Height = 13
    Caption = 'SENHA'
    FocusControl = dbSenha
  end
  object Label4: TLabel [3]
    Left = 320
    Top = 184
    Width = 24
    Height = 13
    Caption = 'TIPO'
  end
  object Label5: TLabel [4]
    Left = 544
    Top = 184
    Width = 55
    Height = 13
    Caption = 'CADASTRO'
    FocusControl = dbCadastro
  end
  inherited Panel1: TPanel
    TabOrder = 4
  end
  inherited Panel2: TPanel
    TabOrder = 6
    inherited DBNavigator1: TDBNavigator
      Hints.Strings = ()
    end
  end
  inherited btnCancelar: TBitBtn
    TabOrder = 7
  end
  inherited btnAtualizar: TBitBtn
    TabOrder = 8
  end
  inherited btnPesquisar: TBitBtn
    TabOrder = 9
  end
  object dbCodigo: TDBEdit [10]
    Left = 96
    Top = 112
    Width = 73
    Height = 21
    DataField = 'ID_USUARIO'
    DataSource = dsPadrao
    Enabled = False
    TabOrder = 0
  end
  object dbNome: TDBEdit [11]
    Left = 96
    Top = 157
    Width = 582
    Height = 21
    CharCase = ecUpperCase
    DataField = 'NOME'
    DataSource = dsPadrao
    TabOrder = 1
  end
  object dbSenha: TDBEdit [12]
    Left = 96
    Top = 200
    Width = 200
    Height = 21
    DataField = 'SENHA'
    DataSource = dsPadrao
    PasswordChar = '*'
    TabOrder = 2
  end
  object dbCadastro: TDBEdit [13]
    Left = 544
    Top = 200
    Width = 134
    Height = 21
    DataField = 'CADASTRO'
    DataSource = dsPadrao
    Enabled = False
    TabOrder = 5
  end
  object cbTipo: TDBComboBox [14]
    Left = 320
    Top = 200
    Width = 201
    Height = 21
    DataField = 'TIPO'
    DataSource = dsPadrao
    Items.Strings = (
      'ADMINISTRADOR'
      'APOIO')
    TabOrder = 3
  end
  inherited btnSair: TBitBtn
    TabOrder = 10
  end
  inherited qryPadrao: TFDQuery
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_ID_USUARIO'
    UpdateOptions.AutoIncFields = 'ID_USUARIO'
    SQL.Strings = (
      'SELECT  '
      '       id_usuario,'
      '       nome,'
      '       senha,'
      '       tipo,'
      '       cadastro '
      'FROM USUARIO'
      'order by id_usuario')
    Left = 768
    Top = 112
    object qryPadraoID_USUARIO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID_USUARIO'
      Origin = 'ID_USUARIO'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object qryPadraoNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 100
    end
    object qryPadraoSENHA: TStringField
      FieldName = 'SENHA'
      Origin = 'SENHA'
      Required = True
      Size = 30
    end
    object qryPadraoTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Required = True
      Size = 30
    end
    object qryPadraoCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
  end
  inherited dsPadrao: TDataSource
    Left = 768
    Top = 168
  end
end
