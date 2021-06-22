unit uFormCadastroPadrao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids,  ComCtrls, StdCtrls, ExtCtrls, DB, DBTables;
type
  TfrmCadastroPadrao = class(TForm)
    Panel1: TPanel;
    btnNovo: TButton;
    btnSalvar: TButton;
    btnEditar: TButton;
    btnCancelar: TButton;
    btnExcluir: TButton;
    btnFechar: TButton;
    PageControl: TPageControl;
    tbsDados: TTabSheet;
    DBGrid1: TDBGrid;
    tbsDetalhes: TTabSheet;
    qryGrid: TQuery;
    dsGrid: TDataSource;
    qryDetalhes: TQuery;
    dsDetalhes: TDataSource;
    Database1: TDatabase;
    qryGenerator: TQuery;
    procedure btnEditarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    function generator( nome : String) : Integer;
    procedure FormCreate(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure Esconder(clicou : Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroPadrao: TfrmCadastroPadrao;
implementation

{$R *.dfm}

procedure TFrmCadastroPadrao.Esconder( clicou : Integer);
begin
          btnEditar.Visible := clicou <> 1;
          btnExcluir.Visible := clicou <> 1;
          btnFechar.Visible := clicou <> 1;
          btnNovo.Visible := clicou <> 1;
          btnSalvar.Visible := clicou = 1;
          btnCancelar.Visible := clicou = 1 ;
end;

procedure TfrmCadastroPadrao.btnEditarClick(Sender: TObject);
begin
    qryDetalhes.Edit;
    PageControl.ActivePageIndex := 1;
    Esconder(1);
end;

procedure TfrmCadastroPadrao.btnCancelarClick(Sender: TObject);
begin
  PageControl.ActivePageIndex := 0;
  Esconder(0);
  qryDetalhes.Cancel;
end;

procedure TfrmCadastroPadrao.btnSalvarClick(Sender: TObject);
begin
  if  MessageDlg(('Deseja Salvar?'),mtConfirmation,mbOKCancel,0) = mrOK  then
  begin
  qryDetalhes.Post;
  Esconder(0);
  PageControl.ActivePageIndex := 0;
  qryGrid.Close;
  qryGrid.Open;
  end
end;

procedure TfrmCadastroPadrao.btnFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmCadastroPadrao.FormCreate(Sender: TObject);
begin
   PageControl.ActivePageIndex := 0;
   qryGrid.Open;
   qryDetalhes.Open;
end;

function TfrmCadastroPadrao.generator(nome: String): Integer;
begin
//  qryGenerator.ParamByName('nome').AsString := nome;
//  qryGenerator.Open;
//  Result := qryGenerator.FieldbyName('gen_id').AsInteger;
//  qryGenerator.Close;

  qryGenerator.Close;
  qryGenerator.Sql.Text := 'Select Gen_id( ' + nome + ',1 ) from RDB$Database';
  qryGenerator.Open;
  Result := qryGenerator.FieldbyName('gen_id').AsInteger;
  qryGenerator.Close;

end;


procedure TfrmCadastroPadrao.btnNovoClick(Sender: TObject);
begin
  Esconder(1);
  PageControl.ActivePageIndex := 1;
  qryDetalhes.Insert;
  btnSalvar.Visible := True;
  btnCancelar.Visible := True;
end;

procedure TfrmCadastroPadrao.btnExcluirClick(Sender: TObject);
begin
  qryDetalhes.Delete;
  qryGrid.Close;
  qryGrid.Open;
end;

end.


