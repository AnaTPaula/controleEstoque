unit U_Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.Buttons,
  Vcl.Menus;

type
  TForm_Principal = class(TForm)
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    SpeedButton10: TSpeedButton;
    StatusBar1: TStatusBar;
    Timer1: TTimer;
    MainMenu1: TMainMenu;
    Cadastro1: TMenuItem;
    Usurio1: TMenuItem;
    Empresa1: TMenuItem;
    Clientes1: TMenuItem;
    Fornecedores1: TMenuItem;
    Produtos1: TMenuItem;
    FormasdePgto1: TMenuItem;
    Movimento1: TMenuItem;
    Compras1: TMenuItem;
    Vendas1: TMenuItem;
    Vendas2: TMenuItem;
    Relatrios1: TMenuItem;
    ListadeUsurios1: TMenuItem;
    ListadeFornecedores1: TMenuItem;
    ListadeClientes1: TMenuItem;
    ListadeProdutos1: TMenuItem;
    ListadeCompras1: TMenuItem;
    ListadeVendas1: TMenuItem;
    SobreoSistema1: TMenuItem;
    SobreoSistema2: TMenuItem;
    procedure Timer1Timer(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_Principal: TForm_Principal;

implementation

{$R *.dfm}

procedure TForm_Principal.SpeedButton10Click(Sender: TObject);
begin
  Form_Principal.Close;
end;

procedure TForm_Principal.Timer1Timer(Sender: TObject);
begin
  // Insere dados no statusbar
  Statusbar1.Panels[0].Text := DateToStr(now);
  Statusbar1.Panels[1].Text := TimeToStr(now);
  Statusbar1.Panels[2].Text := 'SEJA BEM VINDO AO SISTEMA';
end;

end.
