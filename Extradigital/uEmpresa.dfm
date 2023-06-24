object frmEmpresa: TfrmEmpresa
  Left = 0
  Top = 0
  Caption = 'Empresa'
  ClientHeight = 465
  ClientWidth = 796
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
  object pnEmp: TPanel
    Left = 0
    Top = 0
    Width = 796
    Height = 209
    Align = alTop
    TabOrder = 0
    object pgEmpresa: TPageControl
      Left = 1
      Top = 1
      Width = 794
      Height = 151
      ActivePage = tbsManutencao
      Align = alClient
      TabOrder = 0
      object tbsRegiao: TTabSheet
        Caption = 'tbsRegiao'
        TabVisible = False
        object grdEmpresa: TDBGrid
          Left = 0
          Top = 0
          Width = 786
          Height = 141
          Align = alClient
          DataSource = dsEmpresa
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnDblClick = grdEmpresaDblClick
          Columns = <
            item
              Expanded = False
              FieldName = 'IDEMPRESA'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'NMEMPRESA'
              Title.Caption = 'Empresa'
              Width = 200
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NUCNPJ'
              Title.Caption = 'CNPJ'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'STATIVO'
              Title.Caption = 'Ativo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'STEXCLUIDO'
              Visible = False
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
          Width = 786
          Height = 141
          Align = alClient
          ParentBackground = False
          TabOrder = 0
          object lbEmpresa: TLabel
            Left = 15
            Top = 8
            Width = 41
            Height = 13
            Caption = 'Empresa'
          end
          object lbCNPJ: TLabel
            Left = 250
            Top = 8
            Width = 25
            Height = 13
            Caption = 'CNPJ'
          end
          object edEmpresa: TEdit
            Left = 15
            Top = 27
            Width = 221
            Height = 21
            TabOrder = 0
            OnKeyPress = FormKeyPress
          end
          object edCNPJ: TEdit
            Left = 250
            Top = 27
            Width = 127
            Height = 21
            TabOrder = 1
            OnKeyPress = FormKeyPress
          end
          object edAtivo: TCheckBox
            Left = 400
            Top = 29
            Width = 97
            Height = 17
            Caption = 'Ativo'
            TabOrder = 2
          end
        end
      end
    end
    object pnBotoesEmp: TPanel
      Left = 1
      Top = 152
      Width = 794
      Height = 56
      Align = alBottom
      BevelInner = bvRaised
      BevelOuter = bvLowered
      ParentBackground = False
      TabOrder = 1
      object SpeedButtonInsertEmp: TcxButton
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
        OnClick = SpeedButtonInsertEmpClick
      end
      object SpeedButtonDeleteEmp: TcxButton
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
        OnClick = SpeedButtonDeleteEmpClick
      end
      object SpeedButtonEditEmp: TcxButton
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
        OnClick = SpeedButtonEditEmpClick
      end
      object SpeedButtonPostEmp: TcxButton
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
        OnClick = SpeedButtonPostEmpClick
      end
      object SpeedButtonCancelEmp: TcxButton
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
        OnClick = SpeedButtonCancelEmpClick
      end
    end
  end
  object pnEnd: TPanel
    Left = 0
    Top = 209
    Width = 796
    Height = 256
    Align = alClient
    TabOrder = 1
    object Label1: TLabel
      Left = 1
      Top = 1
      Width = 794
      Height = 13
      Align = alTop
      Caption = 'Endere'#231'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitLeft = 2
    end
    object pgEndereco: TPageControl
      Left = 1
      Top = 14
      Width = 794
      Height = 185
      ActivePage = tbsManutEnd
      Align = alClient
      TabOrder = 0
      object tbsGrid: TTabSheet
        Caption = 'tbsGrid'
        TabVisible = False
        object grdEndereco: TDBGrid
          Left = 0
          Top = 0
          Width = 786
          Height = 175
          Align = alClient
          DataSource = dsEndereco
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnDblClick = grdEnderecoDblClick
          Columns = <
            item
              Expanded = False
              FieldName = 'IDENDERECO'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'IDEMPRESA'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'NMENDERECO'
              Title.Caption = 'Endere'#231'o'
              Width = 200
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NUENDERECO'
              Title.Caption = 'N'#250'mero'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NMBAIRRO'
              Title.Caption = 'Bairro'
              Width = 200
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NMCIDADE'
              Title.Caption = 'Cidade'
              Width = 200
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'IDCIDADE'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'IDUF'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'SGESTADO'
              Title.Caption = 'UF'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NUCEP'
              Title.Caption = 'CEP'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'STATIVO'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'STEXCLUIDO'
              Visible = False
            end>
        end
      end
      object tbsManutEnd: TTabSheet
        Caption = 'tbsManutEnd'
        ImageIndex = 1
        TabVisible = False
        object pnManutencaoEnd: TPanel
          Left = 0
          Top = 0
          Width = 786
          Height = 175
          Align = alClient
          ParentBackground = False
          TabOrder = 0
          object lbEndereco: TLabel
            Left = 16
            Top = 8
            Width = 45
            Height = 13
            Caption = 'Endere'#231'o'
          end
          object lbNumero: TLabel
            Left = 296
            Top = 8
            Width = 37
            Height = 13
            Caption = 'N'#250'mero'
          end
          object lbBairro: TLabel
            Left = 384
            Top = 8
            Width = 28
            Height = 13
            Caption = 'Bairro'
          end
          object lbCidade: TLabel
            Left = 16
            Top = 64
            Width = 33
            Height = 13
            Caption = 'Cidade'
          end
          object lbUF: TLabel
            Left = 179
            Top = 64
            Width = 13
            Height = 13
            Caption = 'UF'
          end
          object lbCEP: TLabel
            Left = 272
            Top = 64
            Width = 19
            Height = 13
            Caption = 'CEP'
          end
          object edEndereco: TEdit
            Left = 16
            Top = 27
            Width = 262
            Height = 21
            TabOrder = 0
            OnKeyPress = FormKeyPress
          end
          object edNumero: TEdit
            Left = 296
            Top = 27
            Width = 73
            Height = 21
            TabOrder = 1
            OnKeyPress = FormKeyPress
          end
          object edBairro: TEdit
            Left = 384
            Top = 27
            Width = 137
            Height = 21
            TabOrder = 2
            OnKeyPress = FormKeyPress
          end
          object edCidade: TComboBox
            Left = 16
            Top = 83
            Width = 146
            Height = 21
            TabOrder = 3
            OnKeyPress = FormKeyPress
          end
          object edUF: TComboBox
            Left = 179
            Top = 83
            Width = 67
            Height = 21
            TabOrder = 4
            OnKeyPress = FormKeyPress
          end
          object edCEP: TEdit
            Left = 272
            Top = 83
            Width = 73
            Height = 21
            TabOrder = 5
            OnKeyPress = FormKeyPress
          end
          object edAtivoEnd: TCheckBox
            Left = 368
            Top = 85
            Width = 97
            Height = 17
            Caption = 'Ativo'
            TabOrder = 6
          end
        end
      end
    end
    object pnBotoesEnd: TPanel
      Left = 1
      Top = 199
      Width = 794
      Height = 56
      Align = alBottom
      BevelInner = bvRaised
      BevelOuter = bvLowered
      ParentBackground = False
      TabOrder = 1
      object SpeedButtonInsertEnd: TcxButton
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
        OnClick = SpeedButtonInsertEndClick
      end
      object SpeedButtonDeleteEnd: TcxButton
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
        OnClick = SpeedButtonDeleteEndClick
      end
      object SpeedButtonEditEnd: TcxButton
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
        OnClick = SpeedButtonEditEndClick
      end
      object SpeedButtonPostEnd: TcxButton
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
        OnClick = SpeedButtonPostEndClick
      end
      object SpeedButtonCancelEnd: TcxButton
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
        OnClick = SpeedButtonCancelEndClick
      end
    end
  end
  object qryEmpresa: TFDQuery
    Connection = frmMain.FDConnection1
    SQL.Strings = (
      
        'SELECT A.IDEMPRESA, A.NMEMPRESA, A.NUCNPJ, A.STATIVO, A.STEXCLUI' +
        'DO'
      'FROM CADEMPRESA A'
      'WHERE A.STEXCLUIDO = '#39'N'#39
      'ORDER BY A.IDEMPRESA')
    Left = 352
    Top = 104
  end
  object dsEmpresa: TDataSource
    DataSet = qryEmpresa
    Left = 380
    Top = 104
  end
  object qryAux: TFDQuery
    Connection = frmMain.FDConnection1
    SQL.Strings = (
      'select iduf, nmestado, sgestado'
      'from caduf'
      'order by iduf')
    Left = 456
    Top = 104
  end
  object qryEndereco: TFDQuery
    IndexFieldNames = 'IDEMPRESA'
    MasterSource = dsEmpresa
    MasterFields = 'IDEMPRESA'
    Connection = frmMain.FDConnection1
    SQL.Strings = (
      
        'SELECT A.IDENDERECO, A.IDEMPRESA, A.NMENDERECO, A.NUENDERECO, A.' +
        'NMBAIRRO, A.IDCIDADE, A.IDUF, A.NUCEP, A.STATIVO,A.STEXCLUIDO,'
      '       B.SGESTADO, C.NMCIDADE'
      'FROM CADENDERECOS A'
      'LEFT JOIN CADUF B ON (A.IDUF = B.IDUF)'
      'LEFT JOIN CADCIDADE C ON (A.IDCIDADE = C.IDCIDADE)'
      'WHERE (A.STEXCLUIDO = '#39'N'#39' OR A.STEXCLUIDO IS NULL) '
      '  AND A.TPCADASTRO = '#39'E'#39)
    Left = 448
    Top = 416
  end
  object dsEndereco: TDataSource
    DataSet = qryEndereco
    Left = 476
    Top = 416
  end
end
