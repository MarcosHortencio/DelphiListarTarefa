object DmConexao: TDmConexao
  OnCreate = DataModuleCreate
  Height = 343
  Width = 317
  object FdConection1: TFDConnection
    Params.Strings = (
      'DriverID=MySQL'
      'Database=tarefas'
      'Password=123456'
      'Server=localhost'
      'User_Name=root')
    LoginPrompt = False
    Left = 72
    Top = 32
  end
  object FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink
    VendorLib = 
      'C:\projetos\delphi\acdemiaCodigo\ListarTarefas\src\dlls\libmysql' +
      '55.dll'
    Left = 72
    Top = 96
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 72
    Top = 168
  end
  object FDQuery1: TFDQuery
    Connection = FdConection1
    SQL.Strings = (
      'select * from  usuarios')
    Left = 72
    Top = 240
  end
end
