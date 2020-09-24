object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Drivers Manager'
  ClientHeight = 440
  ClientWidth = 840
  Color = clBtnFace
  Constraints.MinHeight = 440
  Constraints.MinWidth = 840
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 0
    Top = 265
    Width = 840
    Height = 11
    Cursor = crVSplit
    Align = alTop
    Constraints.MaxHeight = 100
    ExplicitTop = 300
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 840
    Height = 265
    Align = alTop
    TabOrder = 0
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 274
      Height = 263
      Align = alLeft
      TabOrder = 0
      object GroupBox1: TGroupBox
        Left = 1
        Top = 1
        Width = 272
        Height = 176
        Align = alTop
        Caption = #1044#1072#1085#1085#1099#1077' '#1086' '#1074#1086#1076#1080#1090#1077#1083#1103#1093
        TabOrder = 0
        object Button1: TButton
          Left = 7
          Top = 135
          Width = 79
          Height = 25
          Caption = #1044#1086#1073#1072#1074#1080#1090#1100
          TabOrder = 4
          OnClick = Button1Click
        end
        object DBNavigator1: TDBNavigator
          Left = 7
          Top = 19
          Width = 255
          Height = 25
          DataSource = DataSource1
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbCancel]
          TabOrder = 7
        end
        object Button2: TButton
          Left = 96
          Top = 135
          Width = 79
          Height = 25
          Caption = #1048#1079#1084#1077#1085#1080#1090#1100
          TabOrder = 5
          OnClick = Button2Click
        end
        object Button3: TButton
          Left = 183
          Top = 135
          Width = 79
          Height = 25
          Caption = #1059#1076#1072#1083#1080#1090#1100
          TabOrder = 6
          OnClick = Button3Click
        end
        object LabeledEdit1: TLabeledEdit
          Left = 7
          Top = 66
          Width = 121
          Height = 21
          EditLabel.Width = 82
          EditLabel.Height = 13
          EditLabel.Caption = #1048#1076#1077#1085#1090#1080#1092#1080#1082#1072#1090#1086#1088
          TabOrder = 0
        end
        object LabeledEdit2: TLabeledEdit
          Left = 141
          Top = 66
          Width = 121
          Height = 21
          EditLabel.Width = 44
          EditLabel.Height = 13
          EditLabel.Caption = #1060#1072#1084#1080#1083#1080#1103
          TabOrder = 1
        end
        object LabeledEdit3: TLabeledEdit
          Left = 7
          Top = 105
          Width = 121
          Height = 21
          EditLabel.Width = 19
          EditLabel.Height = 13
          EditLabel.Caption = #1048#1084#1103
          TabOrder = 2
        end
        object LabeledEdit4: TLabeledEdit
          Left = 141
          Top = 105
          Width = 121
          Height = 21
          EditLabel.Width = 49
          EditLabel.Height = 13
          EditLabel.Caption = #1054#1090#1095#1077#1089#1090#1074#1086
          TabOrder = 3
        end
      end
      object Panel4: TPanel
        Left = 1
        Top = 177
        Width = 272
        Height = 85
        Align = alClient
        TabOrder = 3
        object RadioGroup1: TRadioGroup
          Left = 1
          Top = 1
          Width = 270
          Height = 83
          Align = alTop
          Caption = #1057#1086#1088#1090#1080#1088#1086#1074#1072#1090#1100' '#1087#1086':                '#1053#1072#1081#1090#1080':'
          ItemIndex = 0
          Items.Strings = (
            #1048#1076#1077#1085#1090#1080#1092#1080#1082#1072#1090#1086#1088#1091
            #1060#1072#1084#1080#1083#1080#1080)
          TabOrder = 0
          OnClick = RadioGroup1Click
        end
      end
      object SearchBox1: TSearchBox
        Left = 142
        Top = 202
        Width = 121
        Height = 21
        TabOrder = 1
        OnChange = SearchBox1Change
      end
      object SearchBox2: TSearchBox
        Left = 142
        Top = 231
        Width = 121
        Height = 21
        Enabled = False
        TabOrder = 2
        OnChange = SearchBox2Change
      end
    end
    object DBGrid1: TDBGrid
      Left = 275
      Top = 1
      Width = 564
      Height = 263
      Align = alClient
      DataSource = DataSource1
      DrawingStyle = gdsGradient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ReadOnly = True
      ShowHint = False
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'driver_id'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Color = clWindow
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'surname'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'first_name'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'patronymic'
          Title.Alignment = taCenter
          Visible = True
        end>
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 276
    Width = 840
    Height = 164
    Align = alClient
    TabOrder = 1
    object DBGrid2: TDBGrid
      Left = 1
      Top = 1
      Width = 838
      Height = 162
      Align = alClient
      DataSource = DataSource2
      DrawingStyle = gdsGradient
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'driver_id'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'created_at'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'speed'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'rpm'
          Title.Alignment = taCenter
          Visible = True
        end>
    end
  end
  object SQLConnection1: TSQLConnection
    DriverName = 'MySQL'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=MySQL'
      'HostName=127.0.0.1'
      'Database=odb2'
      'User_Name=root'
      'Password='
      'ServerCharSet=cp1251'
      'BlobSize=-1'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'Compressed=False'
      'Encrypted=False'
      'ConnectTimeout=30')
    Connected = True
    Left = 89
    Top = 345
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 337
    Top = 329
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = SQLTable1
    Left = 201
    Top = 313
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider1'
    Left = 273
    Top = 313
  end
  object ClientDataSet2: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'driver_id'
    MasterFields = 'driver_id'
    MasterSource = DataSource1
    PacketRecords = 0
    Params = <>
    ProviderName = 'DataSetProvider2'
    Left = 264
    Top = 385
  end
  object DataSource2: TDataSource
    DataSet = ClientDataSet2
    Left = 320
    Top = 401
  end
  object DataSetProvider2: TDataSetProvider
    DataSet = SQLTable2
    Left = 200
    Top = 385
  end
  object SQLTable1: TSQLTable
    MaxBlobSize = -1
    SQLConnection = SQLConnection1
    TableName = 'drivers'
    Left = 152
    Top = 313
  end
  object SQLTable2: TSQLTable
    MaxBlobSize = -1
    SQLConnection = SQLConnection1
    TableName = 'logs'
    Left = 152
    Top = 385
  end
end
