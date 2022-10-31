program projDateTime;

uses
  Vcl.Forms,
  DateTime_u in 'DateTime_u.pas' {frmDateTimeManipulation};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmDateTimeManipulation, frmDateTimeManipulation);
  Application.Run;
end.
