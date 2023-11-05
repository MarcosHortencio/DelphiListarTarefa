unit ListarTarefas.model.conexao;

interface

uses
  System.SysUtils,
  System.Classes,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Error,
  FireDAC.UI.Intf,
  FireDAC.Phys.Intf,
  FireDAC.Stan.Def,
  FireDAC.Stan.Pool,
  FireDAC.Stan.Async,
  FireDAC.Phys,
  FireDAC.VCLUI.Wait,
  Data.DB,
  FireDAC.Comp.Client,
  FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef,
  FireDAC.Stan.Param,
  FireDAC.DatS,
  FireDAC.DApt.Intf,
  FireDAC.DApt,
  FireDAC.Comp.DataSet,
  FireDAC.Comp.UI;

type
  TDmConexao = class(TDataModule)
    FdConection1: TFDConnection;
    FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    FDQuery1: TFDQuery;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
    function  DataSet:Tdataset;
    procedure Sql(Value:String);
    procedure Params(aParam:string; aValue:variant );overload;
    function  Params(aParam:string):variant;         overload;
    procedure ExecSql;
    procedure Open;
    procedure StartTransaction;
    procedure Commit;
    procedure RollBack;


  end;
//
//var
//  DmConexao: TDmConexao;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}

{ TDataModule1 }

procedure TDmConexao.Commit;
begin
 FdConection1.Commit;
end;

procedure TDmConexao.DataModuleCreate(Sender: TObject);
begin
 FdConection1.Connected;
end;

function TDmConexao.DataSet: Tdataset;
begin
  result:=FDQuery1;
end;

procedure TDmConexao.ExecSql;
begin
  FDQuery1.ExecSQL;
end;

procedure TDmConexao.Open;
begin
  FDQuery1.Open;
end;

function TDmConexao.Params(aParam: string): variant;
begin
  Result:=FDQuery1.ParamByName(aParam).Value;
end;

procedure TDmConexao.Params(aParam: string; aValue: variant);
begin
 FDQuery1.ParamByName(aParam).Value:=aValue;
end;

procedure TDmConexao.RollBack;
begin
 FdConection1.Rollback;
end;

procedure TDmConexao.Sql(Value: String);
begin
 FDQuery1.SQL.Clear;
 FDQuery1.SQL.Add(Value);
end;

procedure TDmConexao.StartTransaction;
begin
 FdConection1.StartTransaction;
end;

end.
