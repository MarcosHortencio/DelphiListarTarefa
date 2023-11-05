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

  end;

implementation
uses
  System.SysUtils, Vcl.Dialogs;


{ TDaoListarTarefas }

constructor TDaoListarTarefas.create;
begin
  Fconn := TDmConexao.create(nil);
end;

destructor TDaoListarTarefas.Destroy;
begin
  Fconn.Free;
  inherited;
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
    raise Exception.Create('Erro ao tentar atualizar !');
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

   ////preencher o result ....


   result:=value;


 except

 end;
end;

end.
