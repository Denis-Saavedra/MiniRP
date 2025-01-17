unit FrUsuarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Buttons, Vcl.DBCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.Mask, frxClass,
  frxExportBaseDialog, frxExportPDF, frxDBSet, frCoreClasses;

type
  TFrameUsuarios = class(TFrame)
    pnlPrincipal: TPanel;
    pnlTopo: TPanel;
    pnlGrid: TPanel;
    DBGrid1: TDBGrid;
    pnlNavegator: TPanel;
    DBNavigator1: TDBNavigator;
    pnlBotoes: TPanel;
    pnlBnavegar: TPanel;
    pnlBCadastrais: TPanel;
    btnNavegar: TButton;
    btnCadastrais: TButton;
    pnlBusca: TPanel;
    pnlComboBox: TPanel;
    ComboBox: TComboBox;
    EditBusca: TEdit;
    pnlCadastrais: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
    procedure FrameResize(Sender: TObject);
    procedure btnNavegarClick(Sender: TObject);
    procedure btnCadastraisClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses dmDBConnection,
FPrincipal;

{$R *.dfm}

procedure TFrameUsuarios.btnCadastraisClick(Sender: TObject);
begin
  pnlGrid.Hide;
  pnlCadastrais.Show;
  pnlCadastrais.Align := alClient;
end;

procedure TFrameUsuarios.btnNavegarClick(Sender: TObject);
begin
  pnlGrid.Show;
  pnlCadastrais.Hide;
end;

procedure TFrameUsuarios.FrameResize(Sender: TObject);
begin
  pnlBnavegar.Width := pnlBotoes.Width div 2;
  pnlBCadastrais.Width := pnlBotoes.Width div 2;
  pnlCadastrais.Hide;
end;

end.
