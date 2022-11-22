object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'ToDo'
  ClientHeight = 500
  ClientWidth = 939
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBMemo1: TDBMemo
    Left = 232
    Top = 19
    Width = 185
    Height = 29
    DataField = 'Text'
    DataSource = DataSource1
    TabOrder = 0
  end
  object DBNavigator1: TDBNavigator
    Left = 528
    Top = 16
    Width = 240
    Height = 25
    DataSource = DataSource1
    TabOrder = 1
  end
  object StringGridBindSourceDB1: TStringGrid
    Tag = 1
    Left = 136
    Top = 72
    Width = 745
    Height = 385
    ColCount = 1
    FixedCols = 0
    RowCount = 2
    TabOrder = 2
    ColWidths = (
      315)
    ColAligments = (
      0)
  end
  object SqliteconnectionConnection: TSQLConnection
    ConnectionName = 'SQLITECONNECTION'
    DriverName = 'Sqlite'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=Sqlite'
      'Database=C:\Users\fokso\Desktop\ToDo\Win32\Debug\ToDo.db')
    Connected = True
    Left = 24
    Top = 80
  end
  object TodoTable: TSQLDataSet
    CommandText = 'ToDo'
    CommandType = ctTable
    DbxCommandType = 'Dbx.Table'
    MaxBlobSize = 1
    Params = <>
    SQLConnection = SqliteconnectionConnection
    Left = 24
    Top = 128
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = TodoTable
    Left = 24
    Top = 184
  end
  object ClientDataSet1: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider1'
    AfterPost = ClientDataSet1AfterPost
    Left = 24
    Top = 240
    object ClientDataSet1Text: TWideMemoField
      FieldName = 'Text'
      Required = True
      BlobType = ftWideMemo
    end
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 24
    Top = 312
  end
  object BindSourceDB1: TBindSourceDB
    DataSet = ClientDataSet1
    ScopeMappings = <>
    Left = 16
    Top = 376
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 20
    Top = 5
    object LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      GridControl = StringGridBindSourceDB1
      Columns = <>
    end
  end
end
