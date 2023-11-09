unit ListarTarefas.view.CadastroTarefas;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils, System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.StdCtrls,
  Vcl.ExtCtrls,
  System.Generics.Collections,
  ListarTarefas.model.tarefas;

type
  TFrmCadastroTarefas = class(TForm)
    PnlMain: TPanel;
    PnlTitulo: TPanel;
    PnlBotoeira: TPanel;
    PnlCentral: TPanel;
    BtnFechar: TButton;
    BtnSalvar: TButton;
    Label1: TLabel;
    EdtTitulo: TEdit;
    memDescricao: TMemo;
    procedure BtnSalvarClick(Sender: TObject);
    procedure BtnFecharClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Ftarefas: TObjectList<ttarefas>;
    constructor Create(AOwner: Tcomponent; atarefas: TObjectList<ttarefas>);


    // --constructor Create ( a aowner:Tcomponent;aTarefa:TObjectList<Ttarefas>)   ;

  end;

var
  FrmCadastroTarefas: TFrmCadastroTarefas;

implementation

uses
  ListarTarefas.Dao.Tarefas, ListarTarefas.view.main;

{$R *.dfm}
{ TFrmCadastroTarefas }

procedure TFrmCadastroTarefas.BtnFecharClick(Sender: TObject);
begin
  close;
end;

procedure TFrmCadastroTarefas.BtnSalvarClick(Sender: TObject);
var
  Ltarefa: ttarefas;
  ldao:TDaoListarTarefas;
begin
  Ltarefa := ttarefas.Create;
  ldao:=TDaoListarTarefas.create;

  try

      with Ltarefa do
      begin
        Codigo := Ftarefas.count + 1;
        IdUsuario := FrmMain.Fusuario.id;
        titulo := EdtTitulo.Text;
        Descricao := memDescricao.Text;
        DataCriacao:=now;
      end;

      if not ldao.existeTarefa(ltarefa.titulo) then
         ldao.Inserir(ltarefa)
      else
         ShowMessage('Tarefa ja existe !');


  finally
      Ltarefa.DisposeOf;
      ldao.Free;
  end;

  EdtTitulo.Clear;
  memDescricao.Clear;

end;

constructor TFrmCadastroTarefas.Create(AOwner: Tcomponent;
  atarefas: TObjectList<ttarefas>);
begin
  inherited Create(AOwner);
  Ftarefas := atarefas;
end;

end.
