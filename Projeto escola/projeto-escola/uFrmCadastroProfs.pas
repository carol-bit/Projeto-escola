unit uFrmCadastroProfs;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFormCadastroPadrao, StdCtrls, ExtCtrls, Mask, DBCtrls, DB, Calculo,
  DBTables, Grids, DBGrids,
  ComCtrls ;

    const SEXO: array[0..1] of string = ('Feminino', 'Masculino');
type
  TfrmCadastroProfs = class(TfrmCadastroPadrao)
    edtNome: TDBEdit;
    edtCpf: TDBEdit;
    edtDisciplina: TDBEdit;
    edtDataNascimento: TDBEdit;
    edtEmail: TDBEdit;
    lblNome: TLabel;
    lblCpf: TLabel;
    lblSexo: TLabel;
    lblDataNascimento: TLabel;
    lblEmail: TLabel;
    qryGridID: TIntegerField;
    qryGridDISCIPLINA: TStringField;
    qryGridNOME: TStringField;
    qryGridEMAIL: TStringField;
    qryGridCPF: TStringField;
    qryGridDATA: TDateTimeField;
    qryGridSEXO: TIntegerField;
    qryDetalhesID: TIntegerField;
    qryDetalhesDISCIPLINA: TStringField;
    qryDetalhesNOME: TStringField;
    qryDetalhesEMAIL: TStringField;
    qryDetalhesCPF: TStringField;
    qryDetalhesDATA: TDateTimeField;
    qryDetalhesSEXO: TIntegerField;
    Sexo: TDBRadioGroup;
    Panel2: TPanel;
    pgAlunos: TPageControl;
    tbsAlunos: TTabSheet;
    dsGridAluno: TDBGrid;
    tbsNotas: TTabSheet;
    lblAno: TLabel;
    lblPrimeiro: TLabel;
    lblTerceiro: TLabel;
    lblQuarto: TLabel;
    lbl: TLabel;
    lblSegundo: TLabel;
    edtAno: TDBEdit;
    edtNota1: TDBEdit;
    edtNota2: TDBEdit;
    edtNota3: TDBEdit;
    edtNota4: TDBEdit;
    qryAlunosProfessorGrid: TQuery;
    dsAlunosProfessorGrid: TDataSource;
    qryAlunosProfessorGridID: TIntegerField;
    qryAlunosProfessorGridALUNO_ID: TIntegerField;
    qryAlunosProfessorGridPROFESSOR_ID: TIntegerField;
    qryAlunosProfessorGridANO: TIntegerField;
    qryAlunosProfessorGridNOTA_1: TFloatField;
    qryAlunosProfessorGridNOTA_2: TFloatField;
    qryAlunosProfessorGridNOTA_3: TFloatField;
    qryAlunosProfessorGridNOTA_4: TFloatField;
    btnCancelarAluno: TButton;
    qryAlunosProfessorDetalhe: TQuery;
    qryAlunosProfessorDetalheID: TIntegerField;
    dsAlunosProfessorDetalhe: TDataSource;
    dblPuxaId: TDBLookupComboBox;
    qryAlunosProfessorDetalheALUNO_ID: TIntegerField;
    qryAlunosProfessorDetalhePROFESSOR_ID: TIntegerField;
    qryAlunosProfessorDetalheANO: TIntegerField;
    qryAlunosProfessorDetalheNOTA_1: TFloatField;
    qryAlunosProfessorDetalheNOTA_2: TFloatField;
    qryAlunosProfessorDetalheNOTA_3: TFloatField;
    qryAlunosProfessorDetalheNOTA_4: TFloatField;
    qryAlunos: TQuery;
    dsAlunos: TDataSource;
    qryGetGenerator: TQuery;
    qryAlunosNOME: TStringField;
    qryAlunosID: TIntegerField;
    qryAlunosSERIE: TIntegerField;
    qryAlunosEMAIL: TStringField;
    qryAlunosCPF: TStringField;
    qryAlunosDATA_NASCIMENTO: TDateTimeField;
    qryAlunosSEXO: TIntegerField;
    Panel3: TPanel;
    btnNovoAluno: TButton;
    btnEditarAluno: TButton;
    btnSalvarAluno: TButton;
    btnExcluirAluno: TButton;
    btnCalcular: TButton;
    lblMedia: TLabel;
    lblMediaMaior: TLabel;
    lblMediaMenor: TLabel;
    lblMediaM: TLabel;
    lblMediaMa: TLabel;
    lblMediaMe: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure qryDetalhesNewRecord(DataSet: TDataSet);
    procedure qryGridSEXOGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure btnNovoAlunoClick(Sender: TObject);
    procedure qryAlunosProfessorDetalheNewRecord(DataSet: TDataSet);
    procedure Button2Click(Sender: TObject);
    procedure btnSalvarAlunoClick(Sender: TObject);
    procedure btnCancelarAlunoClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure btnCalcularClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroProfs: TfrmCadastroProfs;
implementation

{$R *.dfm}

procedure TfrmCadastroProfs.qryDetalhesNewRecord(DataSet: TDataSet);
begin
  qryDetalhes.FieldByName('id').AsInteger :=  generator('cadastro_professores_gen');
end;

procedure TfrmCadastroProfs.qryGridSEXOGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
 Case Sender.AsInteger of
    0 : Text := 'Feminino';
    1 : Text := 'Masculino';
  end;
end;

procedure TfrmCadastroProfs.FormCreate(Sender: TObject);
begin
  inherited;
  qryAlunosProfessorDetalhe.Open;
  qryAlunosProfessorGrid.Open;
  qryAlunos.Open;
  pgAlunos.ActivePageIndex := 0;
end;

procedure TfrmCadastroProfs.btnNovoAlunoClick(Sender: TObject);
begin
  inherited;
  qryAlunosProfessorDetalhe.insert;
end;

procedure TfrmCadastroProfs.qryAlunosProfessorDetalheNewRecord(
  DataSet: TDataSet);
begin
  qryAlunosProfessorDetalhe.FieldByName('id').AsInteger :=  generator('alunos_do_prof_gen');
   qryAlunosProfessorDetalhe.FieldByName('professor_id').AsInteger :=  qryDetalhes.FieldbyName('id').ASInteger;
  inherited;
end;

procedure TfrmCadastroProfs.Button2Click(Sender: TObject);
begin
  qryAlunosProfessorDetalhe.Edit;
  inherited;
end;

procedure TfrmCadastroProfs.btnSalvarAlunoClick(Sender: TObject);
begin
  if  MessageDlg(('Deseja Salvar?'),mtConfirmation,mbOKCancel,0) = mrOK  then
  qryAlunosProfessorDetalhe.Post;
  qryAlunosProfessorGrid.Close;
  qryAlunosProfessorGrid.Open;
  pgAlunos.ActivePageIndex := 0;
  inherited;
end;

procedure TfrmCadastroProfs.btnCancelarAlunoClick(Sender: TObject);
begin
  qryAlunosProfessorDetalhe.Cancel;
  pgAlunos.ActivePageIndex := 0;
  inherited;
end;

procedure TfrmCadastroProfs.Button1Click(Sender: TObject);
begin
  inherited;
  qryAlunosProfessorDetalhe.insert;
  pgAlunos.ActivePageIndex := 1;
end;

procedure TfrmCadastroProfs.btnCalcularClick(Sender: TObject);
var
  nota1,nota2,nota3,nota4: Double;
  calculoMedia: TCalculoMedia;
  calculoMenor: TCalculoMenor;
  calculoMaior: TCalculoMaior;
begin
 calculoMEdia := TCalculoMedia.create;
 calculoMenor := TCalculoMenor.create;
 calculoMaior := TCalculoMaior.create;
  nota1 := qryAlunosProfessorGrid.FieldbyName('Nota_1').AsFloat;
  nota2 := qryAlunosProfessorGrid.FieldbyName('Nota_2').ASFloat;
  nota3 := qryAlunosProfessorGrid.FieldbyName('Nota_3').ASFloat;
  nota4 := qryAlunosProfessorGrid.FieldbyName('Nota_4').ASFloat;
  lblMediaM.Caption := FloatToStr(calculoMEdia.calcular(nota1, nota2,nota3,nota4));
  lblMediaMe.Caption := FloatToStr(calculoMenor.calcular(nota1, nota2,nota3,nota4));
  lblMediaMa.Caption := FloatToStr(calculoMaior.calcular(nota1, nota2,nota3,nota4));
  calculoMedia.Free;
  calculoMaior.Free;
  calculoMenor.Free;
end;

procedure TfrmCadastroProfs.Button3Click(Sender: TObject);
begin
  qryAlunosProfessorDetalhe.Delete;
  qryAlunosProfessorGrid.Close;
  qryAlunosProfessorGrid.Open;
  inherited;

end;

end.

