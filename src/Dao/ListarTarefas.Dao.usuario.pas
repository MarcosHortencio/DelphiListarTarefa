unit ListarTarefas.Dao.usuario;

interface

uses
  ListarTarefas.model.pessoa, ListarTarefas.model.conexao;
type
 TdaoUsuario=class
   private
   Fconn:Tdmconexao;
   function PreencheUsuaario:Tusuario;
   public
    Constructor   create;
    Destructor    destroy; override;

    procedure     inserir(Value:Tusuario);
    procedure     apagar(Value:tusuario);
    function      alterar(Value:tusuario):tusuario;
    function      LoginUsuario(aEmail, Asenha:string):Tusuario;

 end;

implementation

uses
  System.SysUtils, Vcl.Dialogs;

{ TdaoUsuario }

constructor TdaoUsuario.create;
begin
 Fconn:=TDmConexao.Create(nil);
end;

destructor TdaoUsuario.destroy;
begin
 Fconn.Free;
 inherited;
end;

function TdaoUsuario.alterar(Value: tusuario): tusuario;
begin
 Fconn.StartTransaction;

 try
    Fconn.Sql('update usuario set nome=:nome, email=:email, senha=:senha where id=:id');
    Fconn.Params('nome',value.nome) ;
    Fconn.Params('email',value.email);
    Fconn.Params('senha',value.senha);
    Fconn.Params('id',value.id);
    fconn.ExecSql;
    Fconn.Commit;
    showmessage (' alteração ok ! ') ;
    result:=value;
 Except
    Fconn.RollBack;
    raise Exception.Create('Erro ao tentar atualizar !');
 end;

 end;

procedure TdaoUsuario.apagar(Value: tusuario);
begin
Fconn.StartTransaction;

try
    Fconn.Sql('delete from usuarios where id=:id');
    fconn.Params('id',value.id);
    fconn.ExecSql;
    fconn.Commit;
    showmessage (' exclusão ok ! ') ;
except
   Fconn.RollBack;
   raise Exception.Create('Erro ao tentar excluir !');
end;

end;

procedure TdaoUsuario.inserir(Value: Tusuario);
begin
fconn.StartTransaction;

try
 fconn.Sql('insert into usuarios values (0,:nome,:email,:senha)');
 fconn.Params('nome',value.nome);
 fconn.Params('email',value.email);
 fconn.Params('senha',value.senha);
 fconn.ExecSql;
 fconn.Commit;
 showmessage('Inclusão ok !');
except

 fconn.RollBack;
 raise Exception.Create('Erro ao inserir ');
end;


end;

function TdaoUsuario.LoginUsuario(aEmail, Asenha: string): Tusuario;

begin

Try
   Fconn.Sql('Select * from usuarios where email=:email and senha=:senha');
   Fconn.Params('email',aEmail);
   Fconn.Params('senha',aSenha);
   Fconn.Open;

   if Fconn.DataSet.IsEmpty then
      begin
        ShowMessage('Login/Senha Inválidos !');
        exit;
      end;
   result:=PreencheUsuaario;

Except
on E: Exception do
  begin
    ShowMessage('Erro: ' + E.Message );
  end;
end;



end;

function TdaoUsuario.PreencheUsuaario: Tusuario;
begin
   Result:=Tusuario.Create;
   Fconn.DataSet.First;

   while not Fconn.DataSet.Eof do
   begin
      result.id    := Fconn.DataSet.FieldByName('id').AsInteger;
      result.email := Fconn.DataSet.FieldByName('email').AsString;
      result.nome  := fconn.DataSet.FieldByName('nome').AsString;
      result.senha := Fconn.DataSet.FieldByName('senha').AsString;
      Fconn.DataSet.Next;

   end;

end;

end.
