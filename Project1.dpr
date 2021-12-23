program Project1;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {Form1},
  Sum in 'Sum.pas',
  AbstractClass in 'AbstractClass.pas',
  Division in 'Division.pas',
  Multiply in 'Multiply.pas',
  Sub in 'Sub.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
