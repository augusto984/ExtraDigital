object frmEstado: TfrmEstado
  Left = 0
  Top = 0
  Caption = 'Estado'
  ClientHeight = 329
  ClientWidth = 576
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnBotoes: TPanel
    Left = 0
    Top = 273
    Width = 576
    Height = 56
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    ParentBackground = False
    TabOrder = 1
    object SpeedButtonInsert: TcxButton
      Left = 2
      Top = 2
      Width = 56
      Height = 52
      Hint = 'Incluir'
      Align = alLeft
      OptionsImage.ImageIndex = 4
      OptionsImage.Images = frmMain.imgBotoes
      ParentShowHint = False
      ShowHint = True
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      SpeedButtonOptions.Transparent = True
      TabOrder = 0
      OnClick = SpeedButtonInsertClick
    end
    object SpeedButtonDelete: TcxButton
      Left = 58
      Top = 2
      Width = 56
      Height = 52
      Hint = 'Excluir'
      Align = alLeft
      OptionsImage.ImageIndex = 6
      OptionsImage.Images = frmMain.imgBotoes
      ParentShowHint = False
      ShowHint = True
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Transparent = True
      TabOrder = 1
      OnClick = SpeedButtonDeleteClick
    end
    object SpeedButtonEdit: TcxButton
      Left = 114
      Top = 2
      Width = 56
      Height = 52
      Hint = 'Alterar'
      Align = alLeft
      OptionsImage.ImageIndex = 5
      OptionsImage.Images = frmMain.imgBotoes
      ParentShowHint = False
      ShowHint = True
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Transparent = True
      TabOrder = 2
      OnClick = SpeedButtonEditClick
    end
    object SpeedButtonPost: TcxButton
      Left = 170
      Top = 2
      Width = 56
      Height = 52
      Hint = 'Confirmar'
      Align = alLeft
      OptionsImage.ImageIndex = 7
      OptionsImage.Images = frmMain.imgBotoes
      ParentShowHint = False
      ShowHint = True
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Transparent = True
      TabOrder = 3
      OnClick = SpeedButtonPostClick
    end
    object SpeedButtonCancel: TcxButton
      Left = 226
      Top = 2
      Width = 56
      Height = 52
      Hint = 'Cancelar'
      Align = alLeft
      OptionsImage.ImageIndex = 8
      OptionsImage.Images = frmMain.imgBotoes
      ParentShowHint = False
      ShowHint = True
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Transparent = True
      TabOrder = 4
      OnClick = SpeedButtonCancelClick
    end
  end
  object pgEstado: TPageControl
    Left = 0
    Top = 0
    Width = 576
    Height = 273
    ActivePage = tbsManutencao
    Align = alClient
    TabOrder = 0
    object tbsRegiao: TTabSheet
      Caption = 'tbsRegiao'
      TabVisible = False
      object grdEstado: TDBGrid
        Left = 0
        Top = 0
        Width = 568
        Height = 263
        Align = alClient
        DataSource = dsEstado
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDblClick = grdEstadoDblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'IDUF'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'NMESTADO'
            Title.Caption = 'Estado'
            Width = 209
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SGESTADO'
            Title.Caption = 'Sigla'
            Width = 91
            Visible = True
          end>
      end
    end
    object tbsManutencao: TTabSheet
      Caption = 'tbsManutencao'
      ImageIndex = 1
      TabVisible = False
      object pnManutencao: TPanel
        Left = 0
        Top = 0
        Width = 568
        Height = 263
        Align = alClient
        ParentBackground = False
        TabOrder = 0
        object lbEstado: TLabel
          Left = 15
          Top = 8
          Width = 33
          Height = 13
          Caption = 'Estado'
        end
        object lbSigla: TLabel
          Left = 250
          Top = 8
          Width = 22
          Height = 13
          Caption = 'Sigla'
        end
        object edEstado: TEdit
          Left = 15
          Top = 27
          Width = 221
          Height = 21
          TabOrder = 0
          OnKeyPress = FormKeyPress
        end
        object edSigla: TEdit
          Left = 250
          Top = 27
          Width = 38
          Height = 21
          TabOrder = 1
          OnKeyPress = FormKeyPress
        end
      end
    end
  end
  object qryEstado: TFDQuery
    Connection = frmMain.FDConnection1
    SQL.Strings = (
      'select iduf, nmestado, sgestado'
      'from caduf'
      'order by iduf')
    Left = 352
    Top = 104
  end
  object dsEstado: TDataSource
    DataSet = qryEstado
    Left = 380
    Top = 104
  end
  object qryAux: TFDQuery
    Connection = frmMain.FDConnection1
    SQL.Strings = (
      'select iduf, nmestado, sgestado'
      'from caduf'
      'order by iduf')
    Left = 440
    Top = 152
  end
end
