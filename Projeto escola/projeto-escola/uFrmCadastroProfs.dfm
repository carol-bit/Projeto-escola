inherited frmCadastroProfs: TfrmCadastroProfs
  Left = 318
  Top = 163
  Width = 881
  Caption = 'Cadastro de Professor'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 873
    inherited btnExcluir: TButton
      Top = 20
    end
    inherited btnFechar: TButton
      Top = 20
    end
  end
  inherited PageControl: TPageControl
    Width = 873
    ActivePage = tbsDetalhes
    inherited tbsDados: TTabSheet
      inherited DBGrid1: TDBGrid
        Width = 865
        Columns = <
          item
            Expanded = False
            FieldName = 'ID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DISCIPLINA'
            Width = 160
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME'
            Width = 138
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EMAIL'
            Width = 126
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CPF'
            Width = 107
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATA'
            Width = 111
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SEXO'
            Width = 85
            Visible = True
          end>
      end
    end
    inherited tbsDetalhes: TTabSheet
      object lblNome: TLabel
        Left = 26
        Top = 39
        Width = 28
        Height = 13
        Caption = 'Nome'
      end
      object lblCpf: TLabel
        Left = 26
        Top = 99
        Width = 20
        Height = 13
        Caption = 'CPF'
      end
      object lblSexo: TLabel
        Left = 25
        Top = 155
        Width = 45
        Height = 13
        Caption = 'Disciplina'
      end
      object lblDataNascimento: TLabel
        Left = 23
        Top = 207
        Width = 97
        Height = 13
        Caption = 'Data de Nascimento'
      end
      object lblEmail: TLabel
        Left = 22
        Top = 258
        Width = 25
        Height = 13
        Caption = 'Email'
      end
      object edtNome: TDBEdit
        Left = 24
        Top = 57
        Width = 245
        Height = 21
        DataField = 'NOME'
        DataSource = dsDetalhes
        TabOrder = 0
      end
      object edtCpf: TDBEdit
        Left = 22
        Top = 117
        Width = 245
        Height = 21
        DataField = 'CPF'
        DataSource = dsDetalhes
        TabOrder = 1
      end
      object edtDisciplina: TDBEdit
        Left = 23
        Top = 172
        Width = 245
        Height = 21
        DataField = 'DISCIPLINA'
        DataSource = dsDetalhes
        TabOrder = 2
      end
      object edtDataNascimento: TDBEdit
        Left = 22
        Top = 225
        Width = 245
        Height = 21
        DataField = 'DATA'
        DataSource = dsDetalhes
        TabOrder = 3
      end
      object edtEmail: TDBEdit
        Left = 23
        Top = 276
        Width = 245
        Height = 21
        DataField = 'EMAIL'
        DataSource = dsDetalhes
        TabOrder = 4
      end
      object Sexo: TDBRadioGroup
        Left = 24
        Top = 325
        Width = 159
        Height = 73
        Caption = 'Sexo'
        Columns = 2
        DataField = 'SEXO'
        DataSource = dsDetalhes
        Items.Strings = (
          'Feminino'
          'Masculino')
        TabOrder = 5
        Values.Strings = (
          '0'
          '1')
      end
      object Panel2: TPanel
        Left = 371
        Top = 0
        Width = 796
        Height = 551
        Caption = 'Panel2'
        TabOrder = 6
        object pgAlunos: TPageControl
          Left = 1
          Top = 1
          Width = 794
          Height = 549
          ActivePage = tbsAlunos
          Align = alCustom
          TabOrder = 0
          object tbsAlunos: TTabSheet
            Caption = 'Alunos'
            object dsGridAluno: TDBGrid
              Left = 0
              Top = 0
              Width = 786
              Height = 439
              Align = alClient
              DataSource = dsAlunosProfessorGrid
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = []
              Columns = <
                item
                  Expanded = False
                  FieldName = 'ID'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'ALUNO_ID'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'PROFESSOR_ID'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'ANO'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'NOTA_1'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'NOTA_2'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'NOTA_3'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'NOTA_4'
                  Visible = True
                end>
            end
            object Panel3: TPanel
              Left = 0
              Top = 439
              Width = 786
              Height = 82
              Align = alBottom
              TabOrder = 1
              object btnNovoAluno: TButton
                Left = 535
                Top = 27
                Width = 75
                Height = 25
                Caption = 'Novo'
                TabOrder = 0
                OnClick = Button1Click
              end
              object btnEditarAluno: TButton
                Left = 610
                Top = 27
                Width = 75
                Height = 25
                Caption = 'Editar'
                TabOrder = 1
              end
              object btnExcluirAluno: TButton
                Left = 684
                Top = 27
                Width = 75
                Height = 25
                Caption = 'Excluir'
                TabOrder = 2
              end
              object Button1: TButton
                Left = 227
                Top = 37
                Width = 75
                Height = 25
                Caption = 'Novo'
                TabOrder = 3
                OnClick = Button1Click
              end
              object Button2: TButton
                Left = 301
                Top = 37
                Width = 75
                Height = 25
                Caption = 'Editar'
                TabOrder = 4
                OnClick = Button2Click
              end
              object Button3: TButton
                Left = 376
                Top = 37
                Width = 75
                Height = 25
                Caption = 'Excluir'
                TabOrder = 5
                OnClick = Button3Click
              end
            end
          end
          object tbsNotas: TTabSheet
            Caption = 'Notas'
            ImageIndex = 1
            object lblAno: TLabel
              Left = 17
              Top = 67
              Width = 19
              Height = 13
              Caption = 'Ano'
            end
            object lblPrimeiro: TLabel
              Left = 17
              Top = 108
              Width = 79
              Height = 13
              Caption = 'Nota 1'#176' Bimestre'
            end
            object lblTerceiro: TLabel
              Left = 14
              Top = 213
              Width = 79
              Height = 13
              Caption = 'Nota 3'#176' Bimestre'
            end
            object lblQuarto: TLabel
              Left = 16
              Top = 262
              Width = 79
              Height = 13
              Caption = 'Nota 4'#176' Bimestre'
            end
            object lbl: TLabel
              Left = 17
              Top = 28
              Width = 11
              Height = 13
              Caption = 'ID'
            end
            object lblSegundo: TLabel
              Left = 14
              Top = 158
              Width = 79
              Height = 13
              Caption = 'Nota 2'#176' Bimestre'
            end
            object lblMedia: TLabel
              Left = 208
              Top = 28
              Width = 67
              Height = 29
              Caption = 'M'#233'dia'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -24
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object lblMediaMaior: TLabel
              Left = 208
              Top = 100
              Width = 118
              Height = 29
              Caption = 'Maior Nota'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -24
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object lblMediaMenor: TLabel
              Left = 210
              Top = 162
              Width = 126
              Height = 29
              Caption = 'Menor Nota'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -24
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object lblMediaM: TLabel
              Left = 213
              Top = 60
              Width = 12
              Height = 29
              Caption = '?'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -24
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object lblMediaMa: TLabel
              Left = 211
              Top = 126
              Width = 12
              Height = 29
              Caption = '?'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -24
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object lblMediaMe: TLabel
              Left = 210
              Top = 193
              Width = 12
              Height = 29
              Caption = '?'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -24
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object edtAno: TDBEdit
              Left = 14
              Top = 86
              Width = 145
              Height = 21
              DataField = 'ANO'
              DataSource = dsAlunosProfessorDetalhe
              TabOrder = 0
            end
            object edtNota1: TDBEdit
              Left = 15
              Top = 132
              Width = 145
              Height = 21
              DataField = 'NOTA_1'
              DataSource = dsAlunosProfessorDetalhe
              TabOrder = 1
            end
            object edtNota2: TDBEdit
              Left = 16
              Top = 183
              Width = 145
              Height = 21
              DataField = 'NOTA_2'
              DataSource = dsAlunosProfessorDetalhe
              TabOrder = 2
            end
            object edtNota3: TDBEdit
              Left = 15
              Top = 234
              Width = 145
              Height = 21
              DataField = 'NOTA_3'
              DataSource = dsAlunosProfessorDetalhe
              TabOrder = 3
            end
            object edtNota4: TDBEdit
              Left = 14
              Top = 279
              Width = 145
              Height = 21
              DataField = 'NOTA_4'
              DataSource = dsAlunosProfessorDetalhe
              TabOrder = 4
            end
            object btnCancelarAluno: TButton
              Left = 336
              Top = 488
              Width = 75
              Height = 25
              Caption = 'Cancelar'
              TabOrder = 5
              OnClick = btnCancelarAlunoClick
            end
            object dblPuxaId: TDBLookupComboBox
              Left = 15
              Top = 42
              Width = 145
              Height = 21
              DataField = 'ALUNO_ID'
              DataSource = dsAlunosProfessorDetalhe
              KeyField = 'ID'
              ListField = 'NOME'
              ListSource = dsAlunos
              TabOrder = 6
            end
            object btnSalvarAluno: TButton
              Left = 252
              Top = 488
              Width = 84
              Height = 25
              Caption = 'Salvar'
              TabOrder = 7
              OnClick = btnSalvarAlunoClick
            end
            object btnCalcular: TButton
              Left = 161
              Top = 488
              Width = 91
              Height = 25
              Caption = 'Calcular Notas'
              TabOrder = 8
              OnClick = btnCalcularClick
            end
          end
        end
      end
    end
  end
  inherited qryGrid: TQuery
    SQL.Strings = (
      'select * '
      'from cadastro_professores')
    object qryGridID: TIntegerField
      FieldName = 'ID'
      Origin = 'CONEXAO.CADASTRO_PROFESSORES.ID'
    end
    object qryGridDISCIPLINA: TStringField
      FieldName = 'DISCIPLINA'
      Origin = 'CONEXAO.CADASTRO_PROFESSORES.DISCIPLINA'
      Size = 100
    end
    object qryGridNOME: TStringField
      FieldName = 'NOME'
      Origin = 'CONEXAO.CADASTRO_PROFESSORES.NOME'
      Size = 100
    end
    object qryGridEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'CONEXAO.CADASTRO_PROFESSORES.EMAIL'
      Size = 100
    end
    object qryGridCPF: TStringField
      FieldName = 'CPF'
      Origin = 'CONEXAO.CADASTRO_PROFESSORES.CPF'
      Size = 11
    end
    object qryGridDATA: TDateTimeField
      FieldName = 'DATA'
      Origin = 'CONEXAO.CADASTRO_PROFESSORES.DATA'
    end
    object qryGridSEXO: TIntegerField
      FieldName = 'SEXO'
      Origin = 'CONEXAO.CADASTRO_PROFESSORES.SEXO'
      OnGetText = qryGridSEXOGetText
    end
  end
  inherited qryDetalhes: TQuery
    OnNewRecord = qryDetalhesNewRecord
    SQL.Strings = (
      'select tt.*'
      'from cadastro_professores tt'
      'where tt.id = :id')
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    object qryDetalhesID: TIntegerField
      FieldName = 'ID'
      Origin = 'CONEXAO.CADASTRO_PROFESSORES.ID'
    end
    object qryDetalhesDISCIPLINA: TStringField
      FieldName = 'DISCIPLINA'
      Origin = 'CONEXAO.CADASTRO_PROFESSORES.DISCIPLINA'
      Size = 100
    end
    object qryDetalhesNOME: TStringField
      FieldName = 'NOME'
      Origin = 'CONEXAO.CADASTRO_PROFESSORES.NOME'
      Size = 100
    end
    object qryDetalhesEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'CONEXAO.CADASTRO_PROFESSORES.EMAIL'
      Size = 100
    end
    object qryDetalhesCPF: TStringField
      FieldName = 'CPF'
      Origin = 'CONEXAO.CADASTRO_PROFESSORES.CPF'
      Size = 11
    end
    object qryDetalhesDATA: TDateTimeField
      FieldName = 'DATA'
      Origin = 'CONEXAO.CADASTRO_PROFESSORES.DATA'
    end
    object qryDetalhesSEXO: TIntegerField
      FieldName = 'SEXO'
      Origin = 'CONEXAO.CADASTRO_PROFESSORES.SEXO'
    end
  end
  inherited Database1: TDatabase
    LoginPrompt = False
  end
  object qryAlunosProfessorGrid: TQuery
    DatabaseName = 'Conexao'
    DataSource = dsDetalhes
    RequestLive = True
    SQL.Strings = (
      'select tt.*'
      'from alunos_do_prof tt'
      'where tt.professor_id = :id'
      ''
      '')
    Left = 388
    Top = 499
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptUnknown
        Size = 4
      end>
    object qryAlunosProfessorGridID: TIntegerField
      FieldName = 'ID'
      Origin = 'CONEXAO.ALUNOS_DO_PROF.ID'
    end
    object qryAlunosProfessorGridALUNO_ID: TIntegerField
      FieldName = 'ALUNO_ID'
      Origin = 'CONEXAO.ALUNOS_DO_PROF.ALUNO_ID'
    end
    object qryAlunosProfessorGridPROFESSOR_ID: TIntegerField
      FieldName = 'PROFESSOR_ID'
      Origin = 'CONEXAO.ALUNOS_DO_PROF.PROFESSOR_ID'
    end
    object qryAlunosProfessorGridANO: TIntegerField
      FieldName = 'ANO'
      Origin = 'CONEXAO.ALUNOS_DO_PROF.ANO'
    end
    object qryAlunosProfessorGridNOTA_1: TFloatField
      FieldName = 'NOTA_1'
      Origin = 'CONEXAO.ALUNOS_DO_PROF.NOTA_1'
    end
    object qryAlunosProfessorGridNOTA_2: TFloatField
      FieldName = 'NOTA_2'
      Origin = 'CONEXAO.ALUNOS_DO_PROF.NOTA_2'
    end
    object qryAlunosProfessorGridNOTA_3: TFloatField
      FieldName = 'NOTA_3'
      Origin = 'CONEXAO.ALUNOS_DO_PROF.NOTA_3'
    end
    object qryAlunosProfessorGridNOTA_4: TFloatField
      FieldName = 'NOTA_4'
      Origin = 'CONEXAO.ALUNOS_DO_PROF.NOTA_4'
    end
  end
  object dsAlunosProfessorGrid: TDataSource
    DataSet = qryAlunosProfessorGrid
    Left = 415
    Top = 497
  end
  object qryAlunosProfessorDetalhe: TQuery
    OnNewRecord = qryAlunosProfessorDetalheNewRecord
    DatabaseName = 'Conexao'
    DataSource = dsAlunosProfessorGrid
    RequestLive = True
    SQL.Strings = (
      'select *'
      'from alunos_do_prof'
      'where id = :id')
    Left = 389
    Top = 437
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end>
    object qryAlunosProfessorDetalheID: TIntegerField
      FieldName = 'ID'
      Origin = 'CONEXAO.CADASTRO_ALUNOS.ID'
    end
    object qryAlunosProfessorDetalheALUNO_ID: TIntegerField
      FieldName = 'ALUNO_ID'
      Origin = 'CONEXAO.ALUNOS_DO_PROF.ALUNO_ID'
    end
    object qryAlunosProfessorDetalhePROFESSOR_ID: TIntegerField
      FieldName = 'PROFESSOR_ID'
      Origin = 'CONEXAO.ALUNOS_DO_PROF.PROFESSOR_ID'
    end
    object qryAlunosProfessorDetalheANO: TIntegerField
      FieldName = 'ANO'
      Origin = 'CONEXAO.ALUNOS_DO_PROF.ANO'
    end
    object qryAlunosProfessorDetalheNOTA_1: TFloatField
      FieldName = 'NOTA_1'
      Origin = 'CONEXAO.ALUNOS_DO_PROF.NOTA_1'
    end
    object qryAlunosProfessorDetalheNOTA_2: TFloatField
      FieldName = 'NOTA_2'
      Origin = 'CONEXAO.ALUNOS_DO_PROF.NOTA_2'
    end
    object qryAlunosProfessorDetalheNOTA_3: TFloatField
      FieldName = 'NOTA_3'
      Origin = 'CONEXAO.ALUNOS_DO_PROF.NOTA_3'
    end
    object qryAlunosProfessorDetalheNOTA_4: TFloatField
      FieldName = 'NOTA_4'
      Origin = 'CONEXAO.ALUNOS_DO_PROF.NOTA_4'
    end
  end
  object dsAlunosProfessorDetalhe: TDataSource
    DataSet = qryAlunosProfessorDetalhe
    Left = 420
    Top = 438
  end
  object qryAlunos: TQuery
    DatabaseName = 'Conexao'
    RequestLive = True
    SQL.Strings = (
      'select * from'
      'cadastro_alunos')
    Left = 387
    Top = 539
    object qryAlunosNOME: TStringField
      FieldName = 'NOME'
      Origin = 'CONEXAO.CADASTRO_ALUNOS.NOME'
      Size = 100
    end
    object qryAlunosID: TIntegerField
      FieldName = 'ID'
      Origin = 'CONEXAO.CADASTRO_ALUNOS.ID'
    end
    object qryAlunosSERIE: TIntegerField
      FieldName = 'SERIE'
      Origin = 'CONEXAO.CADASTRO_ALUNOS.SERIE'
    end
    object qryAlunosEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'CONEXAO.CADASTRO_ALUNOS.EMAIL'
      Size = 100
    end
    object qryAlunosCPF: TStringField
      FieldName = 'CPF'
      Origin = 'CONEXAO.CADASTRO_ALUNOS.CPF'
      Size = 11
    end
    object qryAlunosDATA_NASCIMENTO: TDateTimeField
      FieldName = 'DATA_NASCIMENTO'
      Origin = 'CONEXAO.CADASTRO_ALUNOS.DATA_NASCIMENTO'
    end
    object qryAlunosSEXO: TIntegerField
      FieldName = 'SEXO'
      Origin = 'CONEXAO.CADASTRO_ALUNOS.SEXO'
    end
  end
  object dsAlunos: TDataSource
    DataSet = qryAlunos
    Left = 418
    Top = 537
  end
  object qryGetGenerator: TQuery
    DatabaseName = 'Conexao'
    RequestLive = True
    SQL.Strings = (
      'select gen_id(:nome, 1) '
      'from RDB$DATABASE;')
    Left = 473
    Top = 538
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nome'
        ParamType = ptUnknown
      end>
  end
end
