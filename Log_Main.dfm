object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 660
  ClientWidth = 1129
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1129
    Height = 660
    Align = alClient
    TabOrder = 0
    object PageControl1: TPageControl
      Left = 1
      Top = 1
      Width = 1127
      Height = 658
      ActivePage = TabSheet2
      Align = alClient
      TabOrder = 0
      OnChange = PageControl1Change
      object TabSheet1: TTabSheet
        Caption = 'Log'
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object DBGrid1: TDBGrid
          Left = 0
          Top = 0
          Width = 1119
          Height = 630
          Align = alClient
          DataSource = DataSource1
          Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Alert'
        ImageIndex = 1
        object ListView1: TListView
          Left = 0
          Top = 0
          Width = 1119
          Height = 630
          Align = alClient
          Columns = <
            item
              Caption = 'Device Name'
              Width = 200
            end
            item
              Caption = 'Message'
              Width = 100
            end
            item
              Caption = 'State'
              Width = 100
            end
            item
              Caption = 'Dectect Time'
              Width = 150
            end
            item
              Caption = 'Recover Time'
              Width = 150
            end
            item
              Caption = 'Person'
              Width = 100
            end
            item
              Caption = 'Description'
              Width = 200
            end
            item
              Caption = 'Management Time'
              Width = 100
            end>
          TabOrder = 0
          ViewStyle = vsReport
        end
      end
    end
  end
  object DataSource1: TDataSource
    DataSet = TestDBModule.TestDBTable
    Left = 661
    Top = 73
  end
end
