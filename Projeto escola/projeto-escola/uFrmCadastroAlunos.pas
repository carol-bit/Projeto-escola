unit uFrmCadastroAlunos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ComCtrls, StdCtrls, ExtCtrls, DBCtrls,
  Mask, uFormCadastroPadrao, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxLabel, DB, DBTables;
    const SEXO: array[0..1] of string = ('Feminino', 'Masculino');
type
  TfrmCadastroAlunos = class(TfrmCadastroPadrao)
    lblNome: TcxLabel;
    lblCpf: TcxLabel;
    lblData: TcxLabel;
    lblSerie: TcxLabel;
    edtNome: TDBEdit;
    edtEmail: TDBEdit;
    edtSerie: TDBEdit;
    edtCpf: TDBEdit;
    rgSexo: TDBRadioGroup;
    edtDataNascimento: TDBEdit;
    lblEmail: TLabel;
    qryGridID: TIntegerField;
    qryGridSERIE: TIntegerField;
    qryGridNOME: TStringField;
    qryGridEMAIL: TStringField;
    qryGridCPF: TStringField;
    qryGridDATA_NASCIMENTO: TDateTimeField;
    qryGridSEXO: TIntegerField;
    qryDetalhesID: TIntegerField;
    qryDetalhesSERIE: TIntegerField;
    qryDetalhesNOME: TStringField;
    qryDetalhesEMAIL: TStringField;
    qryDetalhesCPF: TStringField;
    qryDetalhesDATA_NASCIMENTO: TDateTimeField;
    qryDetalhesSEXO: TIntegerField;
    qryInsert: TQuery;
    procedure qryDetalhesNewRecord(DataSet: TDataSet);
    procedure qryGridSEXOGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    //procedure (click : Integer): Integer;

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroAlunos: TfrmCadastroAlunos;
implementation

{$R *.dfm}


procedure TfrmCadastroAlunos.qryDetalhesNewRecord(DataSet: TDataSet);
begin
  qryDetalhes.FieldByName('id').AsInteger :=  generator('cadastro_alunos_gen');
end;


procedure TfrmCadastroAlunos.qryGridSEXOGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
 Text := SEXO[Sender.asInteger];
end;

end.
