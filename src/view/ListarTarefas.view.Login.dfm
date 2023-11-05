object FrmLogin: TFrmLogin
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Login'
  ClientHeight = 153
  ClientWidth = 260
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 260
    Height = 153
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 256
    ExplicitHeight = 152
    object Label1: TLabel
      Left = 50
      Top = 7
      Width = 34
      Height = 15
      Caption = 'E-mail'
    end
    object Label2: TLabel
      Left = 51
      Top = 49
      Width = 32
      Height = 15
      Caption = 'Senha'
    end
    object edtEmail: TEdit
      Left = 48
      Top = 24
      Width = 169
      Height = 23
      TabOrder = 0
    end
    object EdtSenha: TEdit
      Left = 48
      Top = 65
      Width = 169
      Height = 23
      PasswordChar = '*'
      TabOrder = 1
    end
    object BtnEntrar: TButton
      Left = 50
      Top = 104
      Width = 75
      Height = 25
      Caption = 'Entrar'
      TabOrder = 2
      OnClick = BtnEntrarClick
    end
    object BtnCadastrar: TButton
      Left = 142
      Top = 104
      Width = 75
      Height = 25
      Caption = 'Cadastrar'
      TabOrder = 3
      OnClick = BtnCadastrarClick
    end
    object StbLogin: TStatusBar
      Left = 1
      Top = 133
      Width = 258
      Height = 19
      Panels = <
        item
          Width = 100
        end
        item
          Width = 50
        end>
      ExplicitTop = 132
      ExplicitWidth = 254
    end
  end
end
