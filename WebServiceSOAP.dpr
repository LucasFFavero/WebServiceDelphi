program WebServiceSOAP;

uses
  Vcl.Forms,
  UfrmMain in 'UfrmMain.pas' {Form1},
  ServicoPJ in 'ServicoPJ.pas',
  protesto in 'protesto.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
