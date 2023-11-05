object FrmCadastroUsuarios: TFrmCadastroUsuarios
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Cadastro de usu'#225'rios'
  ClientHeight = 276
  ClientWidth = 554
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  OnActivate = FormActivate
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  TextHeight = 15
  object PnlMain: TPanel
    Left = 0
    Top = 0
    Width = 554
    Height = 276
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitWidth = 550
    ExplicitHeight = 275
    object PnlTitulo: TPanel
      Left = 0
      Top = 0
      Width = 554
      Height = 48
      Margins.Left = 10
      Margins.Top = 10
      Margins.Right = 10
      Margins.Bottom = 10
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      ExplicitWidth = 550
      object Label1: TLabel
        Left = 0
        Top = 0
        Width = 554
        Height = 48
        Align = alClient
        Alignment = taCenter
        Caption = 'Cadastro de Usu'#225'rios'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -37
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitWidth = 339
        ExplicitHeight = 42
      end
    end
    object PnlBotoeira: TPanel
      Left = 0
      Top = 235
      Width = 554
      Height = 41
      Align = alBottom
      TabOrder = 1
      ExplicitTop = 234
      ExplicitWidth = 550
      object BtnCancelar: TButton
        Left = 478
        Top = 1
        Width = 75
        Height = 39
        Align = alRight
        Caption = 'Cancelar'
        TabOrder = 1
        OnClick = BtnCancelarClick
        ExplicitLeft = 474
      end
      object BtnSalvar: TButton
        Left = 1
        Top = 1
        Width = 75
        Height = 39
        Align = alLeft
        Caption = 'Salvar'
        TabOrder = 0
        OnClick = BtnSalvarClick
      end
    end
    object PnlCentral: TPanel
      Left = 0
      Top = 48
      Width = 554
      Height = 187
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 2
      ExplicitWidth = 550
      ExplicitHeight = 186
      object pnlespaco: TPanel
        Left = 0
        Top = 0
        Width = 554
        Height = 24
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        ExplicitWidth = 550
      end
      object PnlNome: TPanel
        Left = 0
        Top = 124
        Width = 554
        Height = 50
        Align = alTop
        BevelOuter = bvNone
        Padding.Left = 3
        Padding.Top = 3
        Padding.Right = 3
        Padding.Bottom = 3
        TabOrder = 1
        ExplicitWidth = 550
        object Label2: TLabel
          Left = 3
          Top = 3
          Width = 548
          Height = 19
          Align = alClient
          Caption = 'Senha'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitWidth = 41
        end
        object EdtSenha: TEdit
          Left = 3
          Top = 22
          Width = 548
          Height = 25
          Align = alBottom
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          PasswordChar = '*'
          TabOrder = 0
          OnExit = EdtSenhaExit
          ExplicitWidth = 544
        end
      end
      object Panel1: TPanel
        Left = 0
        Top = 74
        Width = 554
        Height = 50
        Align = alTop
        BevelOuter = bvNone
        Padding.Left = 3
        Padding.Top = 3
        Padding.Right = 3
        Padding.Bottom = 3
        TabOrder = 2
        ExplicitWidth = 550
        object PnlEmail: TLabel
          Left = 3
          Top = 3
          Width = 548
          Height = 19
          Align = alClient
          Caption = 'Email'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitWidth = 38
        end
        object EdtEmail: TEdit
          Left = 3
          Top = 22
          Width = 548
          Height = 25
          Align = alBottom
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnExit = EdtEmailExit
          ExplicitWidth = 544
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 24
        Width = 554
        Height = 50
        Align = alTop
        BevelOuter = bvNone
        Padding.Left = 3
        Padding.Top = 3
        Padding.Right = 3
        Padding.Bottom = 3
        TabOrder = 3
        ExplicitWidth = 550
        object Label4: TLabel
          Left = 3
          Top = 3
          Width = 548
          Height = 19
          Align = alClient
          Caption = 'Nome:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitWidth = 45
        end
        object EdtNome: TEdit
          Left = 3
          Top = 22
          Width = 548
          Height = 25
          Align = alBottom
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnExit = EdtNomeExit
          ExplicitWidth = 544
        end
      end
    end
  end
end
