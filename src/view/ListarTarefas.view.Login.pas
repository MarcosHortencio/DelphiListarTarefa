unit ListarTarefas.view.Login;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  ListarTarefas.model.pessoa, Vcl.ComCtrls;

type
  TFrmLogin = class(TForm)
    Panel1: TPanel;
    edtEmail: TEdit;
    EdtSenha: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    BtnEntrar: TButton;
    BtnCadastrar: TButton;
    StbLogin: TStatusBar;
    procedure BtnEntrarClick(Sender: TObject);
    procedure BtnCadastrarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  FrmLogin: TFrmLogin;

implementation

uses
  ListarTarefas.view.CadastroUsuarios;

{$R *.dfm}

procedure TFrmLogin.BtnCadastrarClick(Sender: TObject);
var LCadastroUsuario:TFrmCadastroUsuarios;
begin
  try
    LCadastroUsuario:=TFrmCadastroUsuarios.Create(nil);
    LCadastroUsuario.ShowModal;
    edtEmail.Text:=LCadastroUsuario.EdtEmail.Text;
    EdtSenha.Text:=LCadastroUsuario.EdtSenha.Text;
    BtnEntrar.SetFocus;

  finally
    LCadastroUsuario.Free;

  end;


end;

procedure TFrmLogin.BtnEntrarClick(Sender: TObject);
begin
  close;
  ModalResult:=mrOk;
end;

end.
