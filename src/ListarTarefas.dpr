program ListarTarefas;

uses
  Vcl.Forms,
  ListarTarefas.view.main in 'view\ListarTarefas.view.main.pas' {FrmMain},
  ListarTarefas.model.pessoa in 'model\ListarTarefas.model.pessoa.pas',
  ListarTarefas.model.tarefas in 'model\ListarTarefas.model.tarefas.pas',
  ListarTarefas.view.CadastroUsuarios in 'view\ListarTarefas.view.CadastroUsuarios.pas' {FrmCadastroUsuarios},
  ListarTarefas.view.CadastroTarefas in 'view\ListarTarefas.view.CadastroTarefas.pas' {FrmCadastroTarefas},
  ListarTarefas.view.Login in 'view\ListarTarefas.view.Login.pas' {FrmLogin},
  ListarTarefas.model.conexao in 'model\conexao\ListarTarefas.model.conexao.pas' {DmConexao: TDataModule},
  ListarTarefas.Dao.usuario in 'Dao\ListarTarefas.Dao.usuario.pas',
  ListarTarefas.Dao.Tarefas in 'Dao\ListarTarefas.Dao.Tarefas.pas',
  ListarTarefas.model.login in 'model\ListarTarefas.model.login.pas';

{$R *.res}

begin
  Application.Initialize;
  ReportMemoryLeaksOnShutdown:=true;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmMain, FrmMain);
  Application.Run;
end.
