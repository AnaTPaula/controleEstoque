program ControleEstoque;

uses
  Vcl.Forms,
  UnitPrincipal in '..\FORMS\UnitPrincipal.pas' {Form_Principal},
  U_Dm in '..\FORMS\U_Dm.pas' {DM: TDataModule},
  U_Padrao in '..\FORMS\U_Padrao.pas' {Form_Padrao};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm_Principal, Form_Principal);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TForm_Padrao, Form_Padrao);
  Application.Run;
end.
