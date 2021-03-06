inherited frmCadastroAlunos: TfrmCadastroAlunos
  Width = 816
  Caption = 'Cadastro de alunos'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 808
    inherited btnSalvar: TButton
      Top = 8
    end
  end
  inherited PageControl: TPageControl
    Width = 808
    ActivePage = tbsDetalhes
    inherited tbsDados: TTabSheet
      inherited DBGrid1: TDBGrid
        Width = 800
        Columns = <
          item
            Expanded = False
            FieldName = 'SERIE'
            Title.Caption = 'Serie'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME'
            Title.Caption = 'Nome'
            Width = 186
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EMAIL'
            Title.Caption = 'Email'
            Width = 186
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CPF'
            Width = 117
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATA_NASCIMENTO'
            Title.Caption = 'Data'
            Width = 110
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SEXO'
            Title.Caption = 'Sexo'
            Width = 96
            Visible = True
          end>
      end
    end
    inherited tbsDetalhes: TTabSheet
      object lblEmail: TLabel
        Left = 15
        Top = 133
        Width = 25
        Height = 13
        Caption = 'Email'
      end
      object lblNome: TcxLabel
        Left = 14
        Top = 83
        Caption = 'Nome'
      end
      object lblCpf: TcxLabel
        Left = 130
        Top = 35
        Caption = 'CPF'
      end
      object lblData: TcxLabel
        Left = 16
        Top = 186
        Caption = 'Data de Nascimento'
      end
      object lblSerie: TcxLabel
        Left = 13
        Top = 34
        Caption = 'S'#233'rie'
      end
      object edtNome: TDBEdit
        Left = 14
        Top = 102
        Width = 250
        Height = 21
        DataField = 'NOME'
        DataSource = dsDetalhes
        TabOrder = 4
      end
      object edtEmail: TDBEdit
        Left = 15
        Top = 148
        Width = 248
        Height = 21
        DataField = 'EMAIL'
        DataSource = dsDetalhes
        TabOrder = 5
      end
      object edtSerie: TDBEdit
        Left = 15
        Top = 52
        Width = 106
        Height = 21
        DataField = 'SERIE'
        DataSource = dsDetalhes
        TabOrder = 6
      end
      object edtCpf: TDBEdit
        Left = 131
        Top = 52
        Width = 132
        Height = 21
        DataField = 'CPF'
        DataSource = dsDetalhes
        TabOrder = 7
      end
      object rgSexo: TDBRadioGroup
        Left = 17
        Top = 237
        Width = 176
        Height = 58
        Caption = 'Sexo'
        Columns = 2
        DataField = 'SEXO'
        DataSource = dsDetalhes
        Items.Strings = (
          'Feminino'
          'Masculino')
        TabOrder = 8
        Values.Strings = (
          '0'
          '1')
      end
      object edtDataNascimento: TDBEdit
        Left = 16
        Top = 201
        Width = 118
        Height = 21
        DataField = 'DATA_NASCIMENTO'
        DataSource = dsDetalhes
        TabOrder = 9
      end
    end
  end
  inherited qryGrid: TQuery
    SQL.Strings = (
      'select * from'
      'cadastro_alunos')
    Left = 16
    object qryGridID: TIntegerField
      FieldName = 'ID'
      Origin = 'CONEXAO.CADASTRO_ALUNOS.ID'
    end
    object qryGridSERIE: TIntegerField
      FieldName = 'SERIE'
      Origin = 'CONEXAO.CADASTRO_ALUNOS.SERIE'
    end
    object qryGridNOME: TStringField
      FieldName = 'NOME'
      Origin = 'CONEXAO.CADASTRO_ALUNOS.NOME'
      Size = 100
    end
    object qryGridEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'CONEXAO.CADASTRO_ALUNOS.EMAIL'
      Size = 100
    end
    object qryGridCPF: TStringField
      FieldName = 'CPF'
      Origin = 'CONEXAO.CADASTRO_ALUNOS.CPF'
      Size = 11
    end
    object qryGridDATA_NASCIMENTO: TDateTimeField
      FieldName = 'DATA_NASCIMENTO'
      Origin = 'CONEXAO.CADASTRO_ALUNOS.DATA_NASCIMENTO'
    end
    object qryGridSEXO: TIntegerField
      FieldName = 'SEXO'
      Origin = 'CONEXAO.CADASTRO_ALUNOS.SEXO'
      OnGetText = qryGridSEXOGetText
    end
  end
  inherited dsGrid: TDataSource
    Left = 44
    Top = 539
  end
  inherited qryDetalhes: TQuery
    OnNewRecord = qryDetalhesNewRecord
    Left = 104
    Top = 541
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    object qryDetalhesID: TIntegerField
      FieldName = 'ID'
      Origin = 'CONEXAO.CADASTRO_ALUNOS.ID'
    end
    object qryDetalhesSERIE: TIntegerField
      FieldName = 'SERIE'
      Origin = 'CONEXAO.CADASTRO_ALUNOS.SERIE'
    end
    object qryDetalhesNOME: TStringField
      FieldName = 'NOME'
      Origin = 'CONEXAO.CADASTRO_ALUNOS.NOME'
      Size = 100
    end
    object qryDetalhesEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'CONEXAO.CADASTRO_ALUNOS.EMAIL'
      Size = 100
    end
    object qryDetalhesCPF: TStringField
      FieldName = 'CPF'
      Origin = 'CONEXAO.CADASTRO_ALUNOS.CPF'
      Size = 11
    end
    object qryDetalhesDATA_NASCIMENTO: TDateTimeField
      FieldName = 'DATA_NASCIMENTO'
      Origin = 'CONEXAO.CADASTRO_ALUNOS.DATA_NASCIMENTO'
    end
    object qryDetalhesSEXO: TIntegerField
      FieldName = 'SEXO'
      Origin = 'CONEXAO.CADASTRO_ALUNOS.SEXO'
    end
  end
  inherited Database1: TDatabase
    LoginPrompt = False
    Top = 503
  end
  inherited qryGenerator: TQuery
    SQL.Strings = (
      'select gen_id(cadastro_alunos_gen, 1) '
      'from RDB$DATABASE;')
  end
  object qryInsert: TQuery
    DatabaseName = 'Conexao'
    Left = 260
    Top = 542
  end
end
