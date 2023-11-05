object FrmMain: TFrmMain
  Left = 44
  Top = 15
  Caption = 'Listar Tarefas'
  ClientHeight = 423
  ClientWidth = 538
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  TextHeight = 15
  object PnlMain: TPanel
    Left = 0
    Top = 0
    Width = 538
    Height = 423
    Align = alClient
    Padding.Left = 3
    Padding.Top = 3
    Padding.Right = 3
    Padding.Bottom = 3
    TabOrder = 0
    ExplicitWidth = 534
    ExplicitHeight = 422
    object PnlBotoeira: TPanel
      Left = 4
      Top = 369
      Width = 530
      Height = 50
      Align = alBottom
      Padding.Left = 3
      Padding.Top = 3
      Padding.Right = 3
      Padding.Bottom = 3
      TabOrder = 0
      ExplicitTop = 368
      ExplicitWidth = 526
      object BtnFechar: TButton
        Left = 451
        Top = 4
        Width = 75
        Height = 42
        Align = alRight
        Caption = 'Fechar'
        TabOrder = 0
        OnClick = BtnFecharClick
        ExplicitLeft = 447
      end
      object BtnNovo: TButton
        Left = 4
        Top = 4
        Width = 75
        Height = 42
        Align = alLeft
        Caption = 'Novo'
        TabOrder = 1
        OnClick = BtnNovoClick
      end
      object BtnEditar: TButton
        Left = 80
        Top = 4
        Width = 75
        Height = 42
        Caption = 'Editar'
        TabOrder = 2
      end
    end
    object PnlTitulo: TPanel
      Left = 4
      Top = 4
      Width = 530
      Height = 50
      Align = alTop
      Padding.Left = 3
      Padding.Top = 3
      Padding.Right = 3
      Padding.Bottom = 3
      TabOrder = 1
      ExplicitWidth = 526
      object Label1: TLabel
        Left = 4
        Top = 4
        Width = 522
        Height = 42
        Align = alClient
        Alignment = taCenter
        Caption = 'Tarefas'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -37
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitWidth = 118
      end
    end
    object PnlPesquisa: TPanel
      Left = 4
      Top = 54
      Width = 530
      Height = 33
      Align = alTop
      TabOrder = 2
      ExplicitWidth = 526
      object EdtPesquisar: TEdit
        Left = 1
        Top = 1
        Width = 408
        Height = 31
        Align = alClient
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -29
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        ExplicitWidth = 404
        ExplicitHeight = 40
      end
      object BtnPesquisar: TButton
        Left = 409
        Top = 1
        Width = 120
        Height = 31
        Align = alRight
        Caption = 'Pesquisar'
        TabOrder = 1
        ExplicitLeft = 405
      end
    end
    object PnlLista: TPanel
      Left = 4
      Top = 87
      Width = 530
      Height = 282
      Align = alClient
      TabOrder = 3
      ExplicitWidth = 526
      ExplicitHeight = 281
      object ListView1: TListView
        Left = 1
        Top = 1
        Width = 528
        Height = 280
        Align = alClient
        Columns = <
          item
            Caption = 'Id'
          end
          item
            Caption = 'Titulo'
            Width = 250
          end
          item
            Caption = 'Data/Hora'
            Width = 100
          end>
        TabOrder = 0
        ViewStyle = vsReport
        ExplicitWidth = 524
        ExplicitHeight = 279
      end
    end
  end
end
