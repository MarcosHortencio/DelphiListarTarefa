unit ListarTarefas.view.main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  ListarTarefas.view.Login,
  Vcl.ComCtrls,
  ListarTarefas.model.pessoa,
  ListarTarefas.model.tarefas,
  ListarTarefas.view.CadastroTarefas,
  System.Generics.Collections, ListarTarefas.Dao.usuario;

type
  TFrmMain = class(TForm)
    PnlMain: TPanel;
    PnlBotoeira: TPanel;
    BtnFechar: TButton;
    BtnNovo: TButton;
    BtnEditar: TButton;
    PnlTitulo: TPanel;
    Label1: TLabel;
    PnlPesquisa: TPanel;
    EdtPesquisar: TEdit;
    BtnPesquisar: TButton;
    PnlLista: TPanel;
    ListView1: TListView;
    procedure BtnFecharClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BtnNovoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    FdaoUsuario:tdaousuario;
    Fusuario:Tusuario;
    function validaUsuario(aEmail, aSenha: string): boolean;
    procedure PreencheListView(atarefas:TObjectList<ttarefas>);

  public
    { Public declarations }
  end;

var
  FrmMain: TFrmMain;

implementation


{$R *.dfm}

procedure TFrmMain.BtnFecharClick(Sender: TObject);
begin
  close;
end;

procedure TFrmMain.BtnNovoClick(Sender: TObject);
var
  Lcadastrotarefa: TFrmCadastroTarefas;
  Ltarefas:TObjectList<Ttarefas>;
begin
  Ltarefas:=TObjectList<Ttarefas>.create;
  Lcadastrotarefa := TFrmCadastroTarefas.Create(self,ltarefas);

  try
   Lcadastrotarefa.ShowModal;
   PreencheListView(ltarefas);

  finally
    FreeAndNil(Lcadastrotarefa);
    FreeAndNil(Ltarefas);
  end;

end;

procedure TFrmMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 fusuario.Free;
end;

procedure TFrmMain.FormCreate(Sender: TObject);
var
  lLogin: TFrmLogin;
  cont: integer;

begin
  lLogin := TFrmLogin.Create(nil);
  cont:=0;

  try
    while cont <= 3 do
    begin
      lLogin.ShowModal;

      if not (llogin.ModalResult =mrOk) then
         Application.Terminate;

      if not validaUsuario(lLogin.edtEmail.Text, lLogin.EdtSenha.Text) then
         inc(cont)
      else
         cont := 4;

     llogin.StbLogin.Panels[1].Text:=inttostr(cont);
      //  StatusBar1.Panels[2].Text := Application.Hint;
      if cont = 3 then
          begin
            Application.Terminate;
            exit;
          end;


    end;

  finally
    lLogin.Free;
  end;

end;

procedure TFrmMain.PreencheListView(atarefas: TObjectList<ttarefas>);
var
 litem   : TListItem;
 ltarefa : ttarefas;
begin

 if not Assigned(atarefas) then
   exit;

 ListView1.Clear;

 for ltarefa in atarefas do
   begin
     litem:=ListView1.Items.Add;
     litem.Caption:=ltarefa.Codigo.ToString;
     litem.SubItems.add(ltarefa.titulo);
     litem.SubItems.Add(FormatDateTime('dd/mm/yyyy hh:mm',ltarefa.DataCriacao));
     litem.Data:=ltarefa;
   end;

end;

function TFrmMain.validaUsuario(aEmail, aSenha: string): boolean;

begin
 FdaoUsuario:=TdaoUsuario.create;

  try
     Fusuario:=FdaoUsuario.LoginUsuario(aEmail,aSenha);
     if not Assigned(Fusuario) then
        result:=false
     else
        result:=not Fusuario.id.ToString.IsEmpty;


  finally
     FdaoUsuario.Free;
  end;

end;

end.
