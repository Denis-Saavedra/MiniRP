object FrameUsuarios: TFrameUsuarios
  Left = 0
  Top = 0
  Width = 705
  Height = 483
  TabOrder = 0
  OnResize = FrameResize
  object pnlPrincipal: TPanel
    Left = 0
    Top = 0
    Width = 705
    Height = 483
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 679
    ExplicitHeight = 415
    object pnlTopo: TPanel
      Left = 1
      Top = 1
      Width = 703
      Height = 112
      Align = alTop
      TabOrder = 0
      ExplicitWidth = 677
      object pnlNavegator: TPanel
        Left = 1
        Top = 1
        Width = 701
        Height = 69
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 675
        object DBNavigator1: TDBNavigator
          Left = 1
          Top = 1
          Width = 699
          Height = 67
          DataSource = DBConnection.DataSourceUsuarios
          Align = alClient
          TabOrder = 0
          ExplicitWidth = 673
        end
      end
      object pnlBotoes: TPanel
        Left = 1
        Top = 70
        Width = 701
        Height = 41
        Align = alBottom
        TabOrder = 1
        ExplicitWidth = 675
        object pnlBnavegar: TPanel
          Left = 1
          Top = 1
          Width = 185
          Height = 39
          Align = alLeft
          TabOrder = 0
          object btnNavegar: TButton
            Left = 1
            Top = 1
            Width = 183
            Height = 37
            Align = alClient
            Caption = 'Navegar'
            TabOrder = 0
            OnClick = btnNavegarClick
          end
        end
        object pnlBCadastrais: TPanel
          Left = 515
          Top = 1
          Width = 185
          Height = 39
          Align = alRight
          TabOrder = 1
          ExplicitLeft = 489
          object btnCadastrais: TButton
            Left = 1
            Top = 1
            Width = 183
            Height = 37
            Align = alClient
            Caption = 'Cadastrais'
            TabOrder = 0
            OnClick = btnCadastraisClick
          end
        end
      end
    end
    object pnlGrid: TPanel
      Left = 1
      Top = 113
      Width = 127
      Height = 369
      Align = alClient
      TabOrder = 1
      ExplicitWidth = 320
      ExplicitHeight = 301
      object DBGrid1: TDBGrid
        Left = 1
        Top = 31
        Width = 125
        Height = 337
        Align = alClient
        DataSource = DBConnection.DataSourceUsuarios
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'ID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TIPO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'USUARIO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SENHA'
            Visible = True
          end>
      end
      object pnlBusca: TPanel
        Left = 1
        Top = 1
        Width = 125
        Height = 30
        Align = alTop
        TabOrder = 1
        ExplicitWidth = 318
        object pnlComboBox: TPanel
          Left = 1
          Top = 1
          Width = 185
          Height = 28
          Align = alLeft
          Caption = 'pnlComboBox'
          TabOrder = 0
          object ComboBox: TComboBox
            Left = 16
            Top = 1
            Width = 145
            Height = 23
            TabOrder = 0
            Text = 'ID'
            Items.Strings = (
              'ID'
              'USUARIO'
              'NOME'
              'TIPO')
          end
        end
        object EditBusca: TEdit
          Left = 186
          Top = 1
          Width = 514
          Height = 28
          Align = alClient
          TabOrder = 1
          ExplicitWidth = 131
          ExplicitHeight = 23
        end
      end
    end
    object pnlCadastrais: TPanel
      Left = 128
      Top = 113
      Width = 576
      Height = 369
      Align = alRight
      TabOrder = 2
      ExplicitLeft = 72
      ExplicitTop = 97
      object Label1: TLabel
        Left = 32
        Top = 32
        Width = 11
        Height = 15
        Caption = 'ID'
        FocusControl = DBEdit1
      end
      object Label2: TLabel
        Left = 160
        Top = 32
        Width = 25
        Height = 15
        Caption = 'TIPO'
        FocusControl = DBEdit2
      end
      object Label3: TLabel
        Left = 32
        Top = 80
        Width = 49
        Height = 15
        Caption = 'USUARIO'
        FocusControl = DBEdit3
      end
      object Label4: TLabel
        Left = 32
        Top = 128
        Width = 35
        Height = 15
        Caption = 'NOME'
        FocusControl = DBEdit4
      end
      object Label5: TLabel
        Left = 32
        Top = 184
        Width = 38
        Height = 15
        Caption = 'SENHA'
        FocusControl = DBEdit5
      end
      object DBEdit1: TDBEdit
        Left = 32
        Top = 48
        Width = 104
        Height = 23
        DataField = 'ID'
        DataSource = DBConnection.DataSourceUsuarios
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 160
        Top = 48
        Width = 104
        Height = 23
        DataField = 'TIPO'
        DataSource = DBConnection.DataSourceUsuarios
        TabOrder = 1
      end
      object DBEdit3: TDBEdit
        Left = 32
        Top = 96
        Width = 232
        Height = 23
        DataField = 'USUARIO'
        DataSource = DBConnection.DataSourceUsuarios
        TabOrder = 2
      end
      object DBEdit4: TDBEdit
        Left = 32
        Top = 144
        Width = 232
        Height = 23
        DataField = 'NOME'
        DataSource = DBConnection.DataSourceUsuarios
        TabOrder = 3
      end
      object DBEdit5: TDBEdit
        Left = 32
        Top = 200
        Width = 232
        Height = 23
        DataField = 'SENHA'
        DataSource = DBConnection.DataSourceUsuarios
        TabOrder = 4
      end
    end
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = DBConnection.DataSetUsuarios
    BCDToCurrency = False
    DataSetOptions = []
    Left = 312
    Top = 409
  end
  object frxReport1: TfrxReport
    Version = '2023.3.4'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45383.728952951400000000
    ReportOptions.LastChange = 45383.728952951400000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 216
    Top = 409
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 185.196970000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1USUARIO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 75.590600000000000000
          Top = 22.677180000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'USUARIO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."USUARIO"]')
        end
      end
    end
  end
end
