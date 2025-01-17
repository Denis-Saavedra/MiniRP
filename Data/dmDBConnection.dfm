object DBConnection: TDBConnection
  Height = 750
  Width = 1000
  PixelsPerInch = 120
  object SQLConnection: TSQLConnection
    ConnectionName = 'FBConnection'
    DriverName = 'Firebird'
    LoginPrompt = False
    Params.Strings = (
      'DriverUnit=Data.DBXFirebird'
      
        'DriverPackageLoader=TDBXDynalinkDriverLoader,DbxCommonDriver290.' +
        'bpl'
      
        'DriverAssemblyLoader=Borland.Data.TDBXDynalinkDriverLoader,Borla' +
        'nd.Data.DbxCommonDriver,Version=24.0.0.0,Culture=neutral,PublicK' +
        'eyToken=91d62ebb5b0d1b1b'
      
        'MetaDataPackageLoader=TDBXFirebirdMetaDataCommandFactory,DbxFire' +
        'birdDriver290.bpl'
      
        'MetaDataAssemblyLoader=Borland.Data.TDBXFirebirdMetaDataCommandF' +
        'actory,Borland.Data.DbxFirebirdDriver,Version=24.0.0.0,Culture=n' +
        'eutral,PublicKeyToken=91d62ebb5b0d1b1b'
      'GetDriverFunc=getSQLDriverINTERBASE'
      'LibraryName=dbxfb.dll'
      'LibraryNameOsx=libsqlfb.dylib'
      'VendorLib=fbclient.dll'
      'VendorLibWin64=fbclient.dll'
      'VendorLibOsx=/Library/Frameworks/Firebird.framework/Firebird'
      'Role=RoleName'
      'MaxBlobSize=-1'
      'TrimChar=False'
      'DriverName=Firebird'
      
        'Database=C:\Users\denis\Desktop\DEVOPS\Delphi\MiniImpacto\Data\M' +
        'INIIMPACTO.FDB'
      'RoleName=RoleName'
      'User_Name=sysdba'
      'Password=masterkey'
      'ServerCharSet='
      'SQLDialect=3'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'BlobSize=-1'
      'CommitRetain=False'
      'WaitOnLocks=True'
      'IsolationLevel=ReadCommitted'
      'Trim Char=False')
    Connected = True
    Left = 113
    Top = 88
  end
  object DataSetUsuarios: TSimpleDataSet
    Active = True
    Aggregates = <>
    Connection = SQLConnection
    DataSet.Active = True
    DataSet.CommandText = 'SELECT * FROM USUARIOS'
    DataSet.DataSource = DataSourceUsuarios
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 104
    Top = 200
    object DataSetUsuariosID: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID'
      Required = True
      MaxValue = 999999
    end
    object DataSetUsuariosTIPO: TIntegerField
      FieldName = 'TIPO'
      Required = True
    end
    object DataSetUsuariosUSUARIO: TStringField
      FieldName = 'USUARIO'
      Required = True
      Size = 10
    end
    object DataSetUsuariosNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 10
    end
    object DataSetUsuariosSENHA: TStringField
      FieldName = 'SENHA'
      Required = True
      Size = 10
    end
  end
  object DataSourceUsuarios: TDataSource
    DataSet = DataSetUsuarios
    Left = 113
    Top = 320
  end
end
