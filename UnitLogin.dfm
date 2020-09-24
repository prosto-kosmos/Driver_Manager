object Form2: TForm2
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Login'
  ClientHeight = 207
  ClientWidth = 212
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  Visible = True
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 212
    Height = 207
    Align = alClient
    TabOrder = 0
    object LabeledEdit2: TLabeledEdit
      Left = 32
      Top = 82
      Width = 153
      Height = 21
      EditLabel.Width = 97
      EditLabel.Height = 13
      EditLabel.Caption = #1048#1084#1103' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103':'
      TabOrder = 2
      Text = 'root'
    end
    object LabeledEdit1: TLabeledEdit
      Left = 32
      Top = 32
      Width = 153
      Height = 21
      EditLabel.Width = 92
      EditLabel.Height = 13
      EditLabel.Caption = 'IP-'#1072#1076#1088#1077#1089' '#1089#1077#1088#1074#1077#1088#1072':'
      TabOrder = 1
      Text = '127.0.0.1'
    end
    object LabeledEdit3: TLabeledEdit
      Left = 32
      Top = 124
      Width = 153
      Height = 21
      EditLabel.Width = 41
      EditLabel.Height = 13
      EditLabel.Caption = #1055#1072#1088#1086#1083#1100':'
      TabOrder = 3
    end
    object Button1: TButton
      Left = 47
      Top = 160
      Width = 121
      Height = 25
      Caption = #1055#1086#1076#1082#1083#1102#1095#1080#1090#1100#1089#1103
      TabOrder = 0
      OnClick = Button1Click
    end
  end
end
