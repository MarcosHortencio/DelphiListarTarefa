unit ListarTarefas.model.pessoa;

interface
type
  Tusuario = class
    private
    Fid: integer;
    Fnome: string;
    Femail: string;
    Fsenha: string;

    public
      property id: integer read Fid write Fid;
      property nome: string read Fnome write Fnome;
      property email: string read Femail write Femail;
      property senha: string read Fsenha write Fsenha;

  end;
implementation

end.
