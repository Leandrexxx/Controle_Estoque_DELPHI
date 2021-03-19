object DM: TDM
  OldCreateOrder = False
  Height = 360
  Width = 677
  object conexao: TFDConnection
    Params.Strings = (
      
        'Database=C:\Users\leand\Documents\CURSOS\CURSO DELPHI\ESTOQUE\EX' +
        'E\BANCO\ESTOQUE.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'Protocol=TCPIP'
      'Server=localhost'
      'CharacterSet=WIN1252'
      'Port=3050'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    Left = 136
    Top = 48
  end
  object transacao: TFDTransaction
    Connection = conexao
    Left = 224
    Top = 40
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 344
    Top = 48
  end
end
