program MiniImpacto;

uses
  Vcl.Forms,
  FPrincipal in 'View\FPrincipal.pas' {Form1},
  dmDBConnection in 'Data\dmDBConnection.pas' {DBConnection: TDataModule},
  FrUsuarios in 'View\FrUsuarios.pas' {FrameUsuarios: TFrame};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDBConnection, DBConnection);
  Application.CreateForm(TFormPrincipal, FormPrincipal);
  Application.Run;
end.
