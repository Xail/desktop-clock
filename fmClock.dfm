object frmClock: TfrmClock
  Left = 0
  Top = 0
  AlphaBlendValue = 192
  BorderStyle = bsNone
  ClientHeight = 32
  ClientWidth = 75
  Color = clBtnFace
  TransparentColor = True
  TransparentColorValue = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clBlue
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  PopupMenu = pumActions
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lblTime: TLabel
    Left = 0
    Top = 0
    Width = 75
    Height = 32
    Align = alClient
    Alignment = taCenter
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clFuchsia
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    GlowSize = 3
    ParentFont = False
    Transparent = False
    Layout = tlCenter
    ExplicitWidth = 7
    ExplicitHeight = 25
  end
  object pnlDate: TPanel
    Left = 0
    Top = 0
    Width = 75
    Height = 32
    Align = alClient
    BevelOuter = bvNone
    PopupMenu = pumActions
    TabOrder = 0
    Visible = False
    object lblDayOfWeek: TLabel
      Left = 0
      Top = 0
      Width = 75
      Height = 13
      Align = alTop
      Alignment = taCenter
      Caption = 'lblDayOfWeek'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clFuchsia
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      GlowSize = 3
      ParentFont = False
      ExplicitWidth = 68
    end
    object lblDate: TLabel
      Left = 0
      Top = 13
      Width = 75
      Height = 19
      Align = alClient
      Alignment = taCenter
      Caption = 'lblDate'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clFuchsia
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Layout = tlCenter
      ExplicitWidth = 33
      ExplicitHeight = 13
    end
  end
  object tmrTime: TTimer
    Interval = 250
    OnTimer = tmrTimeTimer
    Left = 32
    Top = 8
  end
  object tmrSwitch: TTimer
    Interval = 2000
    OnTimer = tmrSwitchTimer
    Left = 8
    Top = 16
  end
  object pumActions: TPopupMenu
    Left = 24
    Top = 16
    object N1: TMenuItem
      Caption = #1042#1099#1093#1086#1076
      OnClick = N1Click
    end
  end
end
