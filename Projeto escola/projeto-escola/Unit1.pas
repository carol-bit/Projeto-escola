unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,uFrmCadastroAlunos,uFrmCadastroProfs,
  Dialogs, Grids, DBGrids, ComCtrls, StdCtrls, ExtCtrls, Menus;

type
  TfrmPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Cadastros1: TMenuItem;
    CadastrodeAlunos1: TMenuItem;
    CadastrodeProfessores1: TMenuItem;
    procedure CadastrodeAlunos1Click(Sender: TObject);
    procedure CadastrodeProfessores1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.CadastrodeAlunos1Click(Sender: TObject);
var
  frmAlunos : TfrmCadastroAlunos;
begin
  frmAlunos := TfrmCadastroAlunos.Create(nil);
  frmAlunos.ShowModal;
  frmAlunos.Free;
end;

procedure TfrmPrincipal.CadastrodeProfessores1Click(Sender: TObject);
var
  frmProfessores : TfrmCadastroProfs;
begin
  frmProfessores := TfrmCadastroProfs.Create(nil);
  frmProfessores.ShowModal;
  frmProfessores.Free;
end;

end.
