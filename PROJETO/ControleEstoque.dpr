program ControleEstoque;

uses
  Vcl.Forms,
  UnitPrincipal in '..\FORMS\UnitPrincipal.pas' {Form_Principal};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm_Principal, Form_Principal);
  Application.Run;
end.
