unit ListarTarefas.model.login;


interface
type
 TdaoLogin = class
   private
    FId: Integer;
    Fnome: string;
    Femail: string;

   public
    property Id: Integer read FId write FId;
    property nome: string read Fnome write Fnome;
    property email: string read Femail write Femail;


 end;
implementation

end.
