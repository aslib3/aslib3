unit aslib3dbcommon;

interface
uses aslib3common;

type

 TDbType=(dtPostgreSQL,dtMicrosoftSQL,dtSQLite);
 TDBConnectData=class (TObject)
                   private
                    _DbType: TDbType;
                    _ConnectionString: String;
                    _UserName: String;
                    _Password: String;
                    _Server: String;
                    _Port: Word;
                    _DatabaseName: String;
                    constructor Create(aDbType:TDbType=dtPostgreSQL);
                    procedure SetDbType(aDbType:TDbType);
                   public
                     property DbType: TDbType read _DbType write SetDbType;
                     property ConnectionString: String read _ConnectionString write _ConnectionString;
                     property UserName: String read _UserName write _UserName;
                     property Password: String read _Password write _Password;
                     property Server: String read _Server write _Server;
                     property Port: Word read _Port write _Port;
                     property DatabaseName: String read _DatabaseName write _DatabaseName;
                   end;


implementation

TDBConnectData.constructor Create(aDbType:TDbType=dtPostgreSQL);
begin
 SetDbType(aDbType);
 _ConnectionString:='';
 _UserName:='';
 _Password:='';
 _Server:='127.0.0.1';
 _Port:='';
 _DatabaseName:='';
end;

TDBConnectData.procedure SetDbType(aDbType:TDbType);
begin
 _DbType:=aDbType;
 case aDbType of
  dtPostgreSQL: _Port:=5432;
  dtMicrosoftSQL: _Port:=1433;
  dtSQLite: _Port:=0;
 end;
end;

end.



