program Cadastro;

uses
  Forms,
  Unit1 in 'Unit1.pas' {frmPrincipal},
  uFormCadastroPadrao in 'uFormCadastroPadrao.pas' {frmCadastroPadrao},
  uFrmCadastroAlunos in 'uFrmCadastroAlunos.pas' {frmCadastroAlunos},
  uFrmCadastroProfs in 'uFrmCadastroProfs.pas' {frmCadastroProfs},
  Calculo in 'Calculo.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
