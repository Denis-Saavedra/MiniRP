unit FPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Buttons, Vcl.DBCtrls,
  Data.DB, Vcl.StdCtrls, Vcl.Mask, Vcl.Grids, Vcl.DBGrids, Data.DBXFirebird,
  Datasnap.DBClient, SimpleDS, Data.SqlExpr, frCoreClasses, frxClass,
  Vcl.Imaging.pngimage;

type
  TFormPrincipal = class(TForm)
    pnlPrincipal: TPanel;
    pnlMenu: TPanel;
    pnlLogo: TPanel;
    pnlBotoes: TPanel;
    imgLogo: TImage;
    btnCadastrais: TButton;
    btnFaturamento: TButton;
    btnFinanceiro: TButton;
    btnOpcoes: TButton;
    btnUsuarios: TButton;
    btnClientes: TButton;
    btnProdutos: TButton;
    btnVendas: TButton;
    btnCompras: TButton;
    btnPagar: TButton;
    btnReceber: TButton;
    btnCores: TButton;
    btnParametros: TButton;
    btnVoltar: TButton;
    pnlAtivo: TPanel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure btnCadastraisClick(Sender: TObject);
    procedure btnFaturamentoClick(Sender: TObject);
    procedure btnFinanceiroClick(Sender: TObject);
    procedure btnOpcoesClick(Sender: TObject);
    procedure btnVoltarClick(Sender: TObject);
    procedure btnUsuariosClick(Sender: TObject);
    procedure btnClientesClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPrincipal: TFormPrincipal;
  FrameAberto: TFrame;
  BotaoFrame: TButton;

implementation

uses dmDBConnection,
FrUsuarios;

{$R *.dfm}

procedure EscondeTodosBotoes;
var
  i: integer;
begin
  for i := 0 to FormPrincipal.pnlBotoes.ControlCount - 1 do
  begin
    if (FormPrincipal.pnlBotoes.Controls[i] is TButton) then
      TButton(FormPrincipal.pnlBotoes.Controls[i]).Visible := False;
      TButton(FormPrincipal.pnlBotoes.Controls[i]).Align := alNone;
  end;
end;

procedure MostraBotao(Botao: TButton);
begin
  Botao.Align := alTop;
  Botao.Height := 50;
  Botao.Width := 150;
  Botao.Show;
end;

procedure MenuPrincipal;
begin
  EscondeTodosBotoes;
  MostraBotao(FormPrincipal.btnCadastrais);
  MostraBotao(FormPrincipal.btnFaturamento);
  MostraBotao(FormPrincipal.btnFinanceiro);
  MostraBotao(FormPrincipal.btnOpcoes);
end;

procedure MenuCadastrais;
begin
  EscondeTodosBotoes;
  MostraBotao(FormPrincipal.btnUsuarios);
  MostraBotao(FormPrincipal.btnClientes);
  MostraBotao(FormPrincipal.btnProdutos);
  MostraBotao(FormPrincipal.btnVoltar);
  FormPrincipal.btnVoltar.Align := alBottom;
end;

procedure MenuFaturamento;
begin
  EscondeTodosBotoes;
  MostraBotao(FormPrincipal.btnVendas);
  MostraBotao(FormPrincipal.btnCompras);
  MostraBotao(FormPrincipal.btnVoltar);
  FormPrincipal.btnVoltar.Align := alBottom;
end;

procedure MenuFinanceiro;
begin
  EscondeTodosBotoes;
  MostraBotao(FormPrincipal.btnPagar);
  MostraBotao(FormPrincipal.btnReceber);
  MostraBotao(FormPrincipal.btnVoltar);
  FormPrincipal.btnVoltar.Align := alBottom;
end;

procedure MenuOpcoes;
begin
  EscondeTodosBotoes;
  MostraBotao(FormPrincipal.btnCores);
  MostraBotao(FormPrincipal.btnParametros);
  MostraBotao(FormPrincipal.btnVoltar);
  FormPrincipal.btnVoltar.Align := alBottom;
end;

procedure TFormPrincipal.btnCadastraisClick(Sender: TObject);
begin
  MenuCadastrais;
end;

procedure TFormPrincipal.btnClientesClick(Sender: TObject);
begin
  FrameAberto.free;
  if Assigned(BotaoFrame) then
    BotaoFrame.Enabled := true;
  FrameAberto := TFrameUsuarios.Create(Self);
  FrameAberto.Parent := pnlAtivo;
  FrameAberto.Align := alClient;
  DBConnection.DataSetUsuarios.Insert;
  DBConnection.DataSetUsuarios.cancel;
  BotaoFrame := btnClientes;
  BotaoFrame.Enabled  := false;
end;

procedure TFormPrincipal.btnFaturamentoClick(Sender: TObject);
begin
  MenuFaturamento;
end;

procedure TFormPrincipal.btnFinanceiroClick(Sender: TObject);
begin
  MenuFinanceiro;
end;

procedure TFormPrincipal.btnOpcoesClick(Sender: TObject);
begin
  MenuOpcoes;
end;

procedure TFormPrincipal.btnUsuariosClick(Sender: TObject);
begin
  FrameAberto.free;
  if Assigned(BotaoFrame) then
    BotaoFrame.Enabled := true;
  FrameAberto := TFrameUsuarios.Create(Self);
  FrameAberto.Parent := pnlAtivo;
  FrameAberto.Align := alClient;
  DBConnection.DataSetUsuarios.Insert;
  DBConnection.DataSetUsuarios.cancel;
  BotaoFrame := btnUsuarios;
  BotaoFrame.Enabled  := false;
end;

procedure TFormPrincipal.btnVoltarClick(Sender: TObject);
begin
  MenuPrincipal;
end;

procedure TFormPrincipal.FormActivate(Sender: TObject);
begin
  pnlMenu.Width := 150;
  MenuPrincipal;
end;

procedure TFormPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DBConnection.DataSetUsuarios.ApplyUpdates(0);
end;

end.
