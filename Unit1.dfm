object Form1: TForm1
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = #1076#1080#1092#1092#1077#1088#1077#1085#1094#1080#1072#1083#1100#1085#1099#1093' '#1091#1088#1072#1074#1085#1077#1085#1080#1081' 2-'#1075#1086' '#1087#1086#1088#1103#1076#1082#1072
  ClientHeight = 400
  ClientWidth = 600
  Color = clCream
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Arial'
  Font.Style = []
  Menu = MainMenu1
  OnCreate = FormCreate
  TextHeight = 16
  object Label1: TLabel
    Left = 72
    Top = 216
    Width = 313
    Height = 23
    Alignment = taCenter
    Caption = #1051#1054#1044#1059' '#1089' '#1084#1085#1086#1075#1086#1095#1083#1077#1085#1086#1084' 4-'#1075#1086' '#1087#1086#1088#1103#1076#1082#1072
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    OnClick = Label1Click
  end
  object Label2: TLabel
    Left = 72
    Top = 160
    Width = 334
    Height = 23
    Alignment = taCenter
    Caption = #1051#1054#1044#1059' '#1089#1086' '#1089#1087#1077#1094#1080#1072#1083#1100#1085#1086#1077' '#1087#1088#1072#1074#1086#1081' '#1095#1072#1089#1090#1100#1102
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    OnClick = Label2Click
  end
  object Label3: TLabel
    Left = 72
    Top = 104
    Width = 469
    Height = 23
    Alignment = taCenter
    Caption = #1051#1080#1085#1077#1081#1085#1086#1077' '#1086#1076#1085#1086#1088#1086#1076#1085#1086#1077' '#1076#1080#1092#1092#1077#1088#1080#1085#1094#1080#1072#1083#1100#1085#1086#1077' '#1091#1088#1072#1074#1085#1077#1085#1080#1077
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    OnClick = Label3Click
  end
  object MainMenu1: TMainMenu
    Left = 544
    Top = 216
    object GoTo1: TMenuItem
      Caption = #1048#1089#1090#1086#1088#1080#1103
      OnClick = GoTo1Click
    end
    object Edit1: TMenuItem
      Caption = #1057#1087#1088#1072#1074#1082#1072
      ShortCut = 112
      OnClick = Edit1Click
    end
    object Window1: TMenuItem
      Caption = #1047#1072#1082#1088#1099#1090#1100
      OnClick = Window1Click
    end
  end
end
