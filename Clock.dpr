program Clock;

uses
  Forms,
  Windows,
  fmClock in 'fmClock.pas' {frmClock},
  fmGraphicClock in 'fmGraphicClock.pas' {frmGraphicClock};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := '����';
  Application.CreateForm(TfrmClock, frmClock);
  Application.Run;

end.
