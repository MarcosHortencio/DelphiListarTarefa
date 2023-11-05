unit ListarTarefas.view.CadastroUsuarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  ListarTarefas.model.pessoa, ListarTarefas.Dao.usuario;

type
  TFrmCadastroUsuarios = class(TForm)
    PnlMain: TPanel;
    PnlTitulo: TPanel;
    Label1: TLabel;
    PnlBotoeira: TPanel;
    PnlCentral: TPanel;
    BtnCancelar: TButton;
    BtnSalvar: TButton;
    pnlespaco: TPanel;
    PnlNome: TPanel;
    Label2: TLabel;
    EdtSenha: TEdit;
    Panel1: TPanel;
    PnlEmail: TLabel;
    EdtEmail: TEdit;
    Panel2: TPanel;
    Label4: TLabel;
    EdtNome: TEdit;
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnSalvarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure EdtNomeExit(Sender: TObject);
    procedure EdtEmailExit(Sender: TObject);
    procedure EdtSenhaExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    Fdao:tdaoUsuario;
    procedure Salvar;
  public
    { Public declarations }
    LUsuarioTransito:TUsuario;
  end;

var
  FrmCadastroUsuarios: TFrmCadastroUsuarios;

implementation

{$R *.dfm}

procedure TFrmCadastroUsuarios.BtnCancelarClick(Sender: TObject);
begin
  close;
end;

procedure TFrmCadastroUsuarios.BtnSalvarClick(Sender: TObject);
begin

//  LUsuarioTransito.id:=1;
//  LUsuarioTransito.nome:=EdtNome.Text;
//  LUsuarioTransito.email:=EdtEmail.Text;
//  LUsuarioTransito.senha:=EdtSenha.Text;

  Salvar;
  ModalResult:=mrOk;

  close;

end;

procedure TFrmCadastroUsuarios.EdtEmailExit(Sender: TObject);
begin
  EdtSenha.SetFocus;
end;

procedure TFrmCadastroUsuarios.EdtNomeExit(Sender: TObject);
begin
 EdtEmail.SetFocus;
end;

procedure TFrmCadastroUsuarios.EdtSenhaExit(Sender: TObject);
begin
  BtnSalvar.SetFocus;
end;

procedure TFrmCadastroUsuarios.FormActivate(Sender: TObject);
begin
//  EdtNome.SetFocus;

end;

procedure TFrmCadastroUsuarios.FormCreate(Sender: TObject);
begin
//    LUsuarioTransito:=Tusuario.Create;
    Fdao:=tdaoUsuario.create;
end;

procedure TFrmCadastroUsuarios.FormDestroy(Sender: TObject);
begin
//   LUsuarioTransito.Free;
   fdao.Free;
end;

procedure TFrmCadastroUsuarios.Salvar;
var Lusuario:tusuario;
begin
  Lusuario:=tusuario.create;
  try
    Lusuario.nome :=EdtNome.Text;
    Lusuario.senha:=EdtSenha.Text;
    Lusuario.email:=EdtEmail.Text;
    Fdao.inserir(Lusuario);
  finally
    Lusuario.Free;
  end;
end;

end.
