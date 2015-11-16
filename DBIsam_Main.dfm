object DBIsamMain: TDBIsamMain
  Left = 0
  Top = 0
  Caption = 'DBIsamMain'
  ClientHeight = 611
  ClientWidth = 824
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 824
    Height = 611
    Align = alClient
    TabOrder = 0
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 822
      Height = 56
      Align = alTop
      TabOrder = 0
      object StartBtn: TPanel
        Left = 1
        Top = 1
        Width = 72
        Height = 54
        Align = alLeft
        Caption = 'Start'
        TabOrder = 0
        OnClick = StartBtnClick
        ExplicitTop = -3
      end
    end
    object Panel4: TPanel
      Left = 1
      Top = 57
      Width = 384
      Height = 327
      Align = alLeft
      TabOrder = 1
      object TreeView1: TTreeView
        Left = 1
        Top = 1
        Width = 382
        Height = 325
        Align = alClient
        Indent = 19
        ReadOnly = True
        TabOrder = 0
        OnClick = TreeView1Click
      end
    end
    object Panel5: TPanel
      Left = 1
      Top = 384
      Width = 822
      Height = 226
      Align = alBottom
      TabOrder = 2
      object ListView1: TListView
        Left = 1
        Top = 1
        Width = 820
        Height = 224
        Align = alClient
        Columns = <>
        TabOrder = 0
      end
    end
    object Panel6: TPanel
      Left = 385
      Top = 57
      Width = 438
      Height = 327
      Align = alClient
      TabOrder = 3
    end
  end
end
