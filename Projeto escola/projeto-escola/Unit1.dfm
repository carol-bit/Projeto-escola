object frmPrincipal: TfrmPrincipal
  Left = 322
  Top = 173
  Width = 258
  Height = 352
  Caption = 'Formulario Padr'#227'o'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    Left = 9
    Top = 15
    object Cadastros1: TMenuItem
      Caption = '&Cadastros'
      object CadastrodeAlunos1: TMenuItem
        Caption = 'Cadastro de Alunos'
        OnClick = CadastrodeAlunos1Click
      end
      object CadastrodeProfessores1: TMenuItem
        Caption = 'Cadastro de Professores'
        OnClick = CadastrodeProfessores1Click
      end
    end
  end
end
