unit fmGraphicClock;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls;

type
  TfrmGraphicClock = class(TForm)
    Timer1: TTimer;
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    procedure DrawWeek(const ACanvas: TCanvas);
    procedure DrawTime(const ACanvas: TCanvas);
  end;

var
  frmGraphicClock: TfrmGraphicClock;

implementation

uses DateUtils;

{$R *.dfm}

procedure TfrmGraphicClock.DrawTime(const ACanvas: TCanvas);
var
  ho, mi, se, ms: word;
  idx: integer;
begin
  DecodeTime(Now, ho, mi, se, ms);
  for idx := 0 to 23 do
  begin
    if (idx mod 3) = 0 then
      if idx <= ho then
        ACanvas.Pen.Color := clRed
      else
        ACanvas.Pen.Color := clLtGray
    else
      if idx <= ho then
        ACanvas.Pen.Color := clBlue
      else
        ACanvas.Pen.Color := clLtGray;
    ACanvas.MoveTo(1+idx*2,8);
    if idx < ho then
      ACanvas.LineTo(1+idx*2,20)
    else if idx=ho then
      ACanvas.LineTo(1+idx*2,8+mi div 5)
    else if idx > ho then
      ACanvas.LineTo(1+idx*2,9);
  end;
  for idx := 0 to 59 do
  begin

  end;
end;

procedure TfrmGraphicClock.DrawWeek(const ACanvas: TCanvas);
var
  idx, size, dow: integer;
  R: TRect;
begin
  size:=15;
  dow := DayOfTheWeek(Now)-1;
  for idx := 0 to 6 do
  begin
    if idx < 5 then
      ACanvas.Brush.Color := clBlack
    else
      ACanvas.Brush.Color := clRed;
    R := Rect(idx*size + 1,1,(idx+1)*size-1,5);
    if idx = dow then
      ACanvas.FillRect(R)
    else
      ACanvas.FrameRect(R)
  end;
end;

procedure TfrmGraphicClock.Timer1Timer(Sender: TObject);
begin
  DrawWeek(Canvas);
  DrawTime(Canvas);
end;

end.
