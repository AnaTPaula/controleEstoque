unit U_Padrao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.DBCtrls;

type
  TForm_Padrao = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    BtnNovo: TBitBtn;
    BtnExcluir: TBitBtn;
    BtnEditar: TBitBtn;
    BtnSalvar: TBitBtn;
    BtnCancelar: TBitBtn;
    BtnAtualizar: TBitBtn;
    BtnPesquisar: TBitBtn;
    QrPadrao: TFDQuery;
    DsPadrao: TDataSource;
    DBNavigator1: TDBNavigator;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BtnNovoClick(Sender: TObject);
    procedure BtnExcluirClick(Sender: TObject);
    procedure BtnEditarClick(Sender: TObject);
    procedure BtnSalvarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnAtualizarClick(Sender: TObject);
    procedure TrataBotoes();

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_Padrao: TForm_Padrao;

implementation

{$R *.dfm}

uses U_Dm;

procedure TForm_Padrao.BtnAtualizarClick(Sender: TObject);
begin
  TrataBotoes;
  QrPadrao.Refresh;
  MessageDlg('Registro atualizado com sucesso!',mtInformation, [mbOk],0);
end;

procedure TForm_Padrao.BtnCancelarClick(Sender: TObject);
begin
  TrataBotoes;
  QrPadrao.Cancel;
  MessageDlg('Ação cancelada pelo usuário!',mtInformation, [mbOk],0);
end;

procedure TForm_Padrao.BtnEditarClick(Sender: TObject);
begin
TrataBotoes;
if MessageDlg('Deseja editar esse registro?',mtConfirmation, [mbOk, mbNo], 0) = mrOk then
  begin
    QrPadrao.Edit;
  end;
  TrataBotoes;
  Abort;
end;

procedure TForm_Padrao.BtnExcluirClick(Sender: TObject);
begin
  TrataBotoes;
  if MessageDlg('Deseja excluir esse registro?',mtConfirmation, [mbOk, mbNo], 0) = mrOk then
  begin
    QrPadrao.Delete;
    MessageDlg('Registro excluido com sucesso!',mtInformation, [mbOk],0);
    TrataBotoes;
  end;
  TrataBotoes;
  Abort;
end;

procedure TForm_Padrao.BtnNovoClick(Sender: TObject);
begin
   TrataBotoes;
   QrPadrao.Append;
   MessageDlg('Registro salvo com sucesso!',mtInformation, [mbOk],0);

end;

procedure TForm_Padrao.BtnSalvarClick(Sender: TObject);
begin
  TrataBotoes;
  QrPadrao.Post;
end;

procedure TForm_Padrao.FormKeyPress(Sender: TObject; var Key: Char);
begin
  // A tecla Enter terá a mesma função da tecla Tab
  if key = #13 then
  begin
     Key := #0;
     Perform(wm_nextDlgCtl, 0,0);
  end;

end;

procedure TForm_Padrao.TrataBotoes;
begin
  BtnNovo.Enabled := not BtnNovo.Enabled;
  BtnExcluir.Enabled := not BtnExcluir.Enabled;
  BtnEditar.Enabled := not BtnEditar.Enabled;
  BtnSalvar.Enabled := not BtnSalvar.Enabled;
  BtnAtualizar.Enabled := not BtnAtualizar.Enabled;
end;

end.
