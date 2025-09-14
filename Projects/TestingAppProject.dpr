program TestingAppProject;

uses
  Vcl.Forms,
  TestingApp in 'TestingApp.pas' {MainScreen},
  AddNewTest in 'AddNewTest.pas' {NewTest};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMainScreen, MainScreen);
  Application.CreateForm(TNewTest, NewTest);
  Application.Run;
end.
