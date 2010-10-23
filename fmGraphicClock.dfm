object frmGraphicClock: TfrmGraphicClock
  Left = 0
  Top = 0
  Caption = #1063#1072#1089#1099
  ClientHeight = 213
  ClientWidth = 453
  Color = clBtnFace
  DoubleBuffered = True
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Timer1: TTimer
    Interval = 100
    OnTimer = Timer1Timer
    Left = 120
    Top = 96
  end
end
