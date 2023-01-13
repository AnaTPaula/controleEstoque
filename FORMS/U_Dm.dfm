object DM: TDM
  OldCreateOrder = False
  Height = 423
  Width = 761
  object Conexao: TFDConnection
    Params.Strings = (
      'Database=D:\4. Cursos\5. Delphi\1. Estoque\XE\BD\ESTOQUE.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'Protocol=TCPIP'
      'Server=localhost'
      'Port=3050'
      'CharacterSet=WIN1252'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    Left = 24
    Top = 16
  end
  object Transacao: TFDTransaction
    Connection = Conexao
    Left = 80
    Top = 16
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 168
    Top = 16
  end
end
