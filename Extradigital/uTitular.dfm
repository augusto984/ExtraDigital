object frmTitular: TfrmTitular
  Left = 0
  Top = 0
  Caption = 'Funcion'#225'rio'
  ClientHeight = 465
  ClientWidth = 1094
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
  object Label2: TLabel
    Left = 599
    Top = 62
    Width = 69
    Height = 13
    Caption = 'Dt Nascimento'
  end
  object pnTitular: TPanel
    Left = 0
    Top = 0
    Width = 1094
    Height = 217
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 1030
    object pgTitular: TPageControl
      Left = 1
      Top = 1
      Width = 1092
      Height = 159
      ActivePage = tbsManutencao
      Align = alClient
      TabOrder = 0
      ExplicitWidth = 1028
      object tbsRegiao: TTabSheet
        Caption = 'tbsRegiao'
        TabVisible = False
        ExplicitWidth = 1020
        object grdTitula: TDBGrid
          Left = 0
          Top = 0
          Width = 1084
          Height = 149
          Align = alClient
          DataSource = dsTitular
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnDblClick = grdTitulaDblClick
          Columns = <
            item
              Expanded = False
              FieldName = 'NMEMPRESA'
              Title.Caption = 'Empresa'
              Width = 200
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'IDTITULAR'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'IDEMPRESA'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'NMTITULAR'
              Title.Caption = 'Funcion'#225'rio'
              Width = 200
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NUCNPJCPF'
              Title.Caption = 'CNPJ/CPF'
              Width = 106
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DTNASCIMENTO'
              Title.Caption = 'Dt.Nascimento'
              Width = 75
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DTCADASTRO'
              Title.Caption = 'Dt. Cadastro'
              Width = 74
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TXEMAIL'
              Title.Caption = 'e-mail'
              Width = 200
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TLRESIDENCIAL'
              Title.Caption = 'Tel. Residencial'
              Width = 85
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TLCELULAR'
              Title.Caption = 'Celular'
              Width = 110
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'STEXCLUIDO'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'DTEXCLUIDO'
              Visible = False
            end>
        end
      end
      object tbsManutencao: TTabSheet
        Caption = 'tbsManutencao'
        ImageIndex = 1
        TabVisible = False
        ExplicitWidth = 1020
        object pnManutencao: TPanel
          Left = 0
          Top = 0
          Width = 1084
          Height = 149
          Align = alClient
          ParentBackground = False
          TabOrder = 0
          ExplicitWidth = 1020
          object lbEmpresa: TLabel
            Left = 15
            Top = 8
            Width = 41
            Height = 13
            Caption = 'Empresa'
          end
          object lbTitular: TLabel
            Left = 279
            Top = 8
            Width = 55
            Height = 13
            Caption = 'Funcion'#225'rio'
          end
          object lbDocumento: TLabel
            Left = 615
            Top = 8
            Width = 48
            Height = 13
            Caption = 'CNPJ/CPF'
          end
          object lbDtNascimento: TLabel
            Left = 15
            Top = 56
            Width = 69
            Height = 13
            Caption = 'Dt Nascimento'
          end
          object lbEmail: TLabel
            Left = 171
            Top = 56
            Width = 28
            Height = 13
            Caption = 'e-mail'
          end
          object lbResidencial: TLabel
            Left = 439
            Top = 56
            Width = 74
            Height = 13
            Caption = 'Tel. Residencial'
          end
          object lbCelular: TLabel
            Left = 595
            Top = 56
            Width = 33
            Height = 13
            Caption = 'Celular'
          end
          object edTitular: TEdit
            Left = 279
            Top = 27
            Width = 314
            Height = 21
            TabOrder = 1
            OnKeyPress = FormKeyPress
          end
          object edEmpresa: TComboBox
            Left = 15
            Top = 27
            Width = 242
            Height = 21
            TabOrder = 0
            OnKeyPress = FormKeyPress
          end
          object edDocumento: TEdit
            Left = 615
            Top = 27
            Width = 138
            Height = 21
            TabOrder = 2
            OnKeyPress = FormKeyPress
          end
          object edDtNascimento: TEdit
            Left = 15
            Top = 75
            Width = 138
            Height = 21
            TabOrder = 3
            OnKeyPress = FormKeyPress
          end
          object edEmail: TEdit
            Left = 171
            Top = 75
            Width = 246
            Height = 21
            TabOrder = 4
            OnKeyPress = FormKeyPress
          end
          object edResidencial: TEdit
            Left = 439
            Top = 75
            Width = 138
            Height = 21
            TabOrder = 5
            OnKeyPress = FormKeyPress
          end
          object edCelular: TEdit
            Left = 595
            Top = 75
            Width = 138
            Height = 21
            TabOrder = 6
            OnKeyPress = FormKeyPress
          end
        end
      end
    end
    object pnBotoes: TPanel
      Left = 1
      Top = 160
      Width = 1092
      Height = 56
      Align = alBottom
      BevelInner = bvRaised
      BevelOuter = bvLowered
      ParentBackground = False
      TabOrder = 1
      ExplicitWidth = 1028
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
  end
  object pnEnd: TPanel
    Left = 0
    Top = 217
    Width = 1094
    Height = 248
    Align = alClient
    TabOrder = 1
    ExplicitWidth = 1030
    object Label1: TLabel
      Left = 1
      Top = 1
      Width = 1092
      Height = 13
      Align = alTop
      Caption = 'Endere'#231'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitWidth = 52
    end
    object pgEndereco: TPageControl
      Left = 1
      Top = 14
      Width = 1092
      Height = 177
      ActivePage = tbsManutEnd
      Align = alClient
      TabOrder = 0
      ExplicitWidth = 1028
      object tbsGrid: TTabSheet
        Caption = 'tbsGrid'
        TabVisible = False
        ExplicitWidth = 1020
        object grdEndereco: TDBGrid
          Left = 0
          Top = 0
          Width = 1084
          Height = 167
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
        ExplicitWidth = 1020
        object pnManutencaoEnd: TPanel
          Left = 0
          Top = 0
          Width = 1084
          Height = 167
          Align = alClient
          ParentBackground = False
          TabOrder = 0
          ExplicitWidth = 1020
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
      Top = 191
      Width = 1092
      Height = 56
      Align = alBottom
      BevelInner = bvRaised
      BevelOuter = bvLowered
      ParentBackground = False
      TabOrder = 1
      ExplicitWidth = 1028
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
  object qryTitular: TFDQuery
    Connection = frmMain.FDConnection1
    SQL.Strings = (
      
        'SELECT A.IDTITULAR, A.IDEMPRESA, A.NMTITULAR, A.NUCNPJCPF, A.DTN' +
        'ASCIMENTO, A.DTCADASTRO, A.TXEMAIL, A.TLRESIDENCIAL, A.TLCELULAR' +
        ', '
      '       A.STEXCLUIDO, A.DTEXCLUIDO,'
      '       b.NMEMPRESA'
      'FROM CADTITULAR A'
      'INNER JOIN CADEMPRESA B ON (A.IDEMPRESA = B.IDEMPRESA)'
      'WHERE A.STEXCLUIDO = '#39'N'#39
      'ORDER BY a.IDTITULAR')
    Left = 352
    Top = 104
  end
  object dsTitular: TDataSource
    DataSet = qryTitular
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
  object qryEndereco: TFDQuery
    IndexFieldNames = 'IDTITULAR'
    MasterSource = dsTitular
    MasterFields = 'IDTITULAR'
    Connection = frmMain.FDConnection1
    SQL.Strings = (
      
        'SELECT A.IDENDERECO, A.IDTITULAR, A.NMENDERECO, A.NUENDERECO, A.' +
        'NMBAIRRO, A.IDCIDADE, A.IDUF, A.NUCEP, A.STATIVO,A.STEXCLUIDO,'
      '       B.SGESTADO, C.NMCIDADE'
      'FROM CADENDERECOS A'
      'LEFT JOIN CADUF B ON (A.IDUF = B.IDUF)'
      'LEFT JOIN CADCIDADE C ON (A.IDCIDADE = C.IDCIDADE)'
      'WHERE (A.STEXCLUIDO = '#39'N'#39' OR A.STEXCLUIDO IS NULL) '
      '  AND A.TPCADASTRO = '#39'P'#39)
    Left = 376
    Top = 232
  end
  object dsEndereco: TDataSource
    DataSet = qryEndereco
    Left = 404
    Top = 232
  end
end
