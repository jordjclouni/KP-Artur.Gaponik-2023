object Form2: TForm2
  Left = 0
  Top = 0
  ActiveControl = Edit1
  BorderIcons = []
  Caption = #1083#1080#1085#1077#1081#1085#1099#1081' '#1086#1076#1085#1086#1088#1086#1076#1085#1099#1081' '#1076#1080#1092'. '#1091#1088#1072#1074#1085#1077#1085#1080#1103' 2-'#1075#1086' '#1087#1086#1088#1103#1076#1082#1072
  ClientHeight = 580
  ClientWidth = 900
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = True
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 15
  object Label4: TLabel
    Left = 0
    Top = 81
    Width = 900
    Height = 104
    Align = alTop
    Alignment = taCenter
    AutoSize = False
    Caption = #1042#1074#1077#1076#1080#1090#1077' '#1087#1086#1089#1090#1086#1103#1085#1085#1099#1077' '#1082#1086#1101#1092#1092#1080#1094#1080#1077#1085#1090#1099':'
    Color = clCream
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clDefault
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    WordWrap = True
    ExplicitLeft = -24
    ExplicitTop = 87
  end
  object Label1: TLabel
    Left = 215
    Top = 139
    Width = 53
    Height = 33
    Caption = 'y'#39#39' +'
    Color = clCream
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clDefault
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object Label2: TLabel
    Left = 337
    Top = 139
    Width = 47
    Height = 33
    Caption = 'y'#39' +'
    Color = clCream
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clDefault
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object Label3: TLabel
    Left = 453
    Top = 139
    Width = 64
    Height = 33
    Caption = 'y = 0'
    Color = clCream
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clDefault
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object Label6: TLabel
    Left = 0
    Top = 0
    Width = 900
    Height = 81
    Align = alTop
    Alignment = taCenter
    AutoSize = False
    Caption = #1044#1080#1092#1092#1077#1088#1077#1085#1094#1080#1072#1083#1100#1085#1099#1077' '#1091#1088#1072#1074#1085#1077#1085#1080#1103' 2-'#1086#1075#1086' '#1087#1086#1088#1103#1076#1082#1072':'
    Color = clCream
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clDefault
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    WordWrap = True
    ExplicitTop = 8
  end
  object Edit1: TEdit
    Left = 152
    Top = 136
    Width = 57
    Height = 41
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clDefault
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 274
    Top = 136
    Width = 57
    Height = 41
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clDefault
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 390
    Top = 136
    Width = 57
    Height = 41
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clDefault
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object Button1: TButton
    Left = 544
    Top = 138
    Width = 129
    Height = 41
    Caption = #1056#1045#1064#1048#1058#1068
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMenuHighlight
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = Button1Click
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 561
    Width = 900
    Height = 19
    Panels = <>
  end
  object WebBrowser1: TWebBrowser
    Left = 0
    Top = 185
    Width = 900
    Height = 376
    Align = alClient
    TabOrder = 5
    ExplicitWidth = 896
    ExplicitHeight = 375
    ControlData = {
      4C000000055D0000DC2600000000000000000000000000000000000000000000
      000000004C000000000000000000000001000000E0D057007335CF11AE690800
      2B2E126209000000000000004C0000000114020000000000C000000000000046
      8000000000000000000000000000000000000000000000000000000000000000
      00000000000000000100000000000000000000000000000000000000}
  end
  object MainMenu1: TMainMenu
    Left = 760
    Top = 88
    object GoTo1: TMenuItem
      Caption = #1053#1072' '#1075#1083#1072#1074#1085#1091#1102
      OnClick = GoTo1Click
    end
    object Window1: TMenuItem
      Caption = #1047#1072#1082#1088#1099#1090#1100
      OnClick = Window1Click
    end
  end
end
