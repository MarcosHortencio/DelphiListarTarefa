unit ListarTarefas.Dao.Tarefas;

interface

uses
  ListarTarefas.model.conexao, ListarTarefas.model.Tarefas, Winapi.Windows;


type
  TDaoListarTarefas = class
  private
    Fconn: TDmConexao;

  public
    Constructor create;
    Destructor Destroy; override;

    procedure Inserir(value: Ttarefas);
    procedure Excluir(value: Integer);
    function Alterar(value: Ttarefas): Ttarefas;
    function Procurar(value: Ttarefas): Ttarefas;
    function existeTarefa(value:String): Boolean;



  end;

implementation
uses
  System.SysUtils, Vcl.Dialogs, ListarTarefas.model.pessoa;


{ TDaoListarTarefas }

constructor TDaoListarTarefas.create;
begin
  Fconn := TDmConexao.create(nil);
end;

destructor TDaoListarTarefas.Destroy;
begin
  inherited;
  Fconn.Free;
end;

procedure TDaoListarTarefas.Inserir(value: Ttarefas);
begin
  Fconn.StartTransaction;
  try
    Fconn.Sql('INSERT INTO tarefas.tarefas (idUsuario, titulo, Descricao) ' +
      'VALUES(:idUsuario, :titulo, :Descricao)');
    Fconn.Params('idUsuario', value.IdUsuario);
    Fconn.Params('titulo', value.titulo);
    Fconn.Params('Descricao', value.Descricao);
    Fconn.ExecSql;
    Fconn.Commit;

  except
    Fconn.RollBack;
    raise Exception.Create('Erro ao tentar Inseir !');
  end;

end;

procedure TDaoListarTarefas.Excluir(value: Integer);
begin
  fconn.StartTransaction;
  try
    fconn.Sql('DELETE FROM tarefas.tarefas WHERE Codigo=:idtarefa;');
    fconn.Params('idtarefa',value);
    fconn.ExecSql;
    fconn.Commit;

  except
    raise Exception.Create('Erro ao excluir tarefa ...');
  end;

end;

function TDaoListarTarefas.existeTarefa(value: String): Boolean;
begin
 fconn.StartTransaction;
 try
   fconn.Sql('select * from tarefas t where t.titulo = :Titulo');
   fconn.Params('titulo',value);
   fconn.Open;

   if Fconn.DataSet.IsEmpty then
      result:=false
   else
      result:=true;
 Except
on E: Exception do
  begin
    ShowMessage('Erro: ' + E.Message );
  end;

 end;


end;

function TDaoListarTarefas.Alterar(value: Ttarefas): Ttarefas;
begin
 fconn.StartTransaction;
 try
   fconn.Sql('UPDATE tarefas.tarefas SET titulo=:titulo, Descricao=:decsricao'+
             ' WHERE Codigo=:codigo )');
   fconn.Params('titulo'   ,value.titulo);
   fconn.Params('decsricao',value.Descricao);
   fconn.Params('codigo'   ,value.Codigo);
   fconn.ExecSql;
   fconn.Commit;
   result:=value;
 except
   fconn.RollBack;
   raise Exception.Create('Erro ao Atualizar Tarefa ...');
 end;


end;

function TDaoListarTarefas.Procurar(value: Ttarefas): Ttarefas;

begin
 fconn.StartTransaction;
 try
   fconn.Sql('select * from tarefas t where t.titulo = :Titulo');
   fconn.Params('titulo',value.titulo);
   fconn.ExecSql;

   if Fconn.DataSet.IsEmpty then
      begin
        ShowMessage('Não localizado !');
        exit;
      end;

   Result:=Ttarefas.Create;
   result.Codigo     := Fconn.DataSet.FieldByName('id').AsInteger;
   result.IdUsuario  := Fconn.DataSet.FieldByName('isusuario').AsInteger;
   result.titulo     := Fconn.DataSet.FieldByName('titulo').AsString;
   result.Descricao  := Fconn.DataSet.FieldByName('descricao').AsString;
   result.DataCriacao:= Fconn.DataSet.FieldByName('datacriavao').AsDateTime;


 except
  on E: Exception do
    begin
      ShowMessage('Erro: ' + E.Message );
  end;

 end;
end;

end.
