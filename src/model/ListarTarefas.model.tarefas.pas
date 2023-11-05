unit ListarTarefas.model.tarefas;

interface

type
  Ttarefas = class
  private
    FCodigo: integer;
    FIdUsuario: integer;
    Ftitulo: string;
    FDescricao: string;
    FDataCriacao: TdateTime;

  public
    property Codigo: integer read FCodigo write FCodigo;
    property IdUsuario: integer read FIdUsuario write FIdUsuario;
    property titulo: string read Ftitulo write Ftitulo;
    property Descricao: string read FDescricao write FDescricao;
    property DataCriacao: TdateTime read FDataCriacao write FDataCriacao;

  end;

implementation

end.
