object frmCadastroPadrao: TfrmCadastroPadrao
  Left = 355
  Top = 132
  Width = 842
  Height = 675
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 579
    Width = 834
    Height = 69
    Align = alBottom
    TabOrder = 0
    object btnNovo: TButton
      Left = 490
      Top = 20
      Width = 75
      Height = 25
      Caption = 'Novo'
      TabOrder = 0
      OnClick = btnNovoClick
    end
    object btnSalvar: TButton
      Left = 562
      Top = 9
      Width = 75
      Height = 25
      Caption = 'Salvar'
      TabOrder = 1
      Visible = False
      OnClick = btnSalvarClick
    end
    object btnEditar: TButton
      Left = 565
      Top = 20
      Width = 75
      Height = 25
      Caption = 'Editar'
      TabOrder = 2
      OnClick = btnEditarClick
    end
    object btnCancelar: TButton
      Left = 642
      Top = 9
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 3
      Visible = False
      OnClick = btnCancelarClick
    end
    object btnExcluir: TButton
      Left = 641
      Top = 19
      Width = 75
      Height = 25
      Caption = 'Excluir'
      TabOrder = 4
      OnClick = btnExcluirClick
    end
    object btnFechar: TButton
      Left = 718
      Top = 19
      Width = 75
      Height = 25
      Caption = 'Fechar'
      TabOrder = 5
      OnClick = btnFecharClick
    end
  end
  object PageControl: TPageControl
    Left = 0
    Top = 0
    Width = 834
    Height = 579
    ActivePage = tbsDados
    Align = alClient
    TabOrder = 1
    object tbsDados: TTabSheet
      Caption = 'Dados'
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 826
        Height = 551
        Align = alClient
        DataSource = dsGrid
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            Visible = True
          end>
      end
    end
    object tbsDetalhes: TTabSheet
      Caption = 'Detalhes'
      ImageIndex = 1
    end
  end
  object qryGrid: TQuery
    DatabaseName = 'Conexao'
    SQL.Strings = (
      'select * '
      'from cadastro_alunos')
    Left = 17
    Top = 539
  end
  object dsGrid: TDataSource
    DataSet = qryGrid
    Left = 45
    Top = 538
  end
  object qryDetalhes: TQuery
    DatabaseName = 'Conexao'
    DataSource = dsGrid
    RequestLive = True
    SQL.Strings = (
      'select tt.*'
      'from cadastro_alunos tt'
      'where tt.id = :id')
    Left = 98
    Top = 543
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
  end
  object dsDetalhes: TDataSource
    DataSet = qryDetalhes
    Left = 130
    Top = 541
  end
  object Database1: TDatabase
    DatabaseName = 'Conexao'
    Params.Strings = (
      'USER NAME=sysdba'
      'password=wildfire')
    SessionName = 'Default'
    Left = 18
    Top = 505
  end
  object qryGenerator: TQuery
    DatabaseName = 'Conexao'
    SQL.Strings = (
      'select gen_id(:nome, 1) '
      'from RDB$DATABASE;')
    Left = 201
    Top = 540
    ParamData = <
      item
        DataType = ftString
        Name = 'nome'
        ParamType = ptInput
      end>
  end
end
