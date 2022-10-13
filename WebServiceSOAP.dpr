program WebServiceSOAP;

uses
  Vcl.Forms,
  UfrmMain in 'UfrmMain.pas' {frmMain},
  ServicoPJ in 'ServicoPJ.pas',
  protesto in 'protesto.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
