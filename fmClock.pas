unit fmClock;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Menus;

type
  TClockMode = (cmClock, cmDate);
  TfrmClock = class(TForm)
    lblTime: TLabel;
    tmrTime: TTimer;
    pnlDate: TPanel;
    lblDayOfWeek: TLabel;
    lblDate: TLabel;
    tmrSwitch: TTimer;
    pumActions: TPopupMenu;
    N1: TMenuItem;
    procedure tmrTimeTimer(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure tmrSwitchTimer(Sender: TObject);
    procedure N1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmClock: TfrmClock;
  colon: boolean;

implementation uses DateUtils;

{$R *.dfm}

procedure TfrmClock.FormShow(Sender: TObject);
begin
  ShowWindow(Application.Handle, SW_HIDE);
  colon:=true;
  Left := Screen.WorkAreaLeft + Screen.WorkAreaWidth - Width;
  Top := Screen.WorkAreaTop + Screen.WorkAreaHeight - Height;
  lblTime.Caption := FormatDateTime('hh:nn',Now);
end;

procedure TfrmClock.N1Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmClock.tmrSwitchTimer(Sender: TObject);
begin
  if pnlDate.Visible then
    pnlDate.Visible := false
  else
  begin
    case DayOfTheWeek(Now) of
      1: lblDayOfWeek.Caption := 'Понедельник';
      2: lblDayOfWeek.Caption := 'Вторник';
      3: lblDayOfWeek.Caption := 'Среда';
      4: lblDayOfWeek.Caption := 'Четверг';
      5: lblDayOfWeek.Caption := 'Пятница';
      6: lblDayOfWeek.Caption := 'Суббота';
      7: lblDayOfWeek.Caption := 'Воскресенье';
    end;
    lblDate.Caption := FormatDateTime('dd.mm.yyyy',date);
    pnlDate.Visible := true;
  end;
end;

procedure TfrmClock.tmrTimeTimer(Sender: TObject);
begin
  if colon then
    lblTime.Caption := FormatDateTime('hh:nn',Now)
  else
    lblTime.Caption := FormatDateTime('hh nn',Now);
  colon := not colon;
end;

end.
