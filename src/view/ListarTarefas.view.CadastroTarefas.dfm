object FrmCadastroTarefas: TFrmCadastroTarefas
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Cadastro de Tarefas'
  ClientHeight = 359
  ClientWidth = 541
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  TextHeight = 15
  object PnlMain: TPanel
    Left = 0
    Top = 0
    Width = 541
    Height = 359
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 537
    ExplicitHeight = 358
    object PnlTitulo: TPanel
      Left = 1
      Top = 1
      Width = 539
      Height = 56
      Align = alTop
      TabOrder = 0
      ExplicitWidth = 535
      object Label1: TLabel
        Left = 1
        Top = 1
        Width = 537
        Height = 54
        Align = alClient
        Alignment = taCenter
        Caption = 'Cadastro de Tarefas'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -37
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitWidth = 317
        ExplicitHeight = 42
      end
    end
    object PnlBotoeira: TPanel
      Left = 1
      Top = 317
      Width = 539
      Height = 41
      Align = alBottom
      TabOrder = 1
      ExplicitTop = 316
      ExplicitWidth = 535
      object BtnFechar: TButton
        Left = 463
        Top = 1
        Width = 75
        Height = 39
        Align = alRight
        Caption = 'Fechar'
        TabOrder = 0
        OnClick = BtnFecharClick
        ExplicitLeft = 459
      end
      object BtnSalvar: TButton
        Left = 1
        Top = 1
        Width = 75
        Height = 39
        Align = alLeft
        Caption = 'Salvar'
        TabOrder = 1
        OnClick = BtnSalvarClick
      end
    end
    object PnlCentral: TPanel
      Left = 1
      Top = 57
      Width = 539
      Height = 260
      Align = alClient
      TabOrder = 2
      ExplicitWidth = 535
      ExplicitHeight = 259
      object EdtTitulo: TEdit
        Left = 16
        Top = 16
        Width = 513
        Height = 23
        TabOrder = 0
      end
      object memDescricao: TMemo
        Left = 16
        Top = 64
        Width = 513
        Height = 161
        TabOrder = 1
      end
    end
  end
end
