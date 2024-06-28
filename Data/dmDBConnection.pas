unit dmDBConnection;

interface

uses
  System.SysUtils, System.Classes, Data.DBXFirebird, Data.DB, Data.SqlExpr,
  Data.FMTBcd, Datasnap.DBClient, SimpleDS;

type
  TDBConnection = class(TDataModule)
    SQLConnection: TSQLConnection;
    DataSetUsuarios: TSimpleDataSet;
    DataSourceUsuarios: TDataSource;
    DataSetUsuariosID: TIntegerField;
    DataSetUsuariosUSUARIO: TStringField;
    DataSetUsuariosNOME: TStringField;
    DataSetUsuariosSENHA: TStringField;
    DataSetUsuariosTIPO: TIntegerField;
    DataSetUsuariosID2: TIntegerField;
    DataSetUsuariosTIPO2: TIntegerField;
    DataSetUsuariosUSUARIO2: TStringField;
    DataSetUsuariosNOME2: TStringField;
    DataSetUsuariosSENHA2: TStringField;
    DataSetUsuariosSENHAMESTRE: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DBConnection: TDBConnection;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
