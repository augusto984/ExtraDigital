object frmConsulta: TfrmConsulta
  Left = 0
  Top = 0
  Caption = 'Consulta'
  ClientHeight = 595
  ClientWidth = 1020
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
    Left = 0
    Top = 0
    Width = 1020
    Height = 13
    Align = alTop
    Caption = 'Empresa'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ExplicitWidth = 49
  end
  object Label3: TLabel
    Left = 0
    Top = 158
    Width = 1020
    Height = 13
    Align = alTop
    Caption = 'Endere'#231'o Empresa'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ExplicitTop = 153
    ExplicitWidth = 104
  end
  object Label1: TLabel
    Left = 0
    Top = 291
    Width = 1020
    Height = 13
    Align = alTop
    Caption = 'Funcionario'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ExplicitWidth = 65
  end
  object Label4: TLabel
    Left = 0
    Top = 451
    Width = 1020
    Height = 13
    Align = alTop
    Caption = 'Endere'#231'o Funcion'#225'rio'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ExplicitWidth = 120
  end
  object grdEmpresa: TDBGrid
    Left = 0
    Top = 13
    Width = 1020
    Height = 145
    Align = alTop
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
  object grdEndereco: TDBGrid
    Left = 0
    Top = 171
    Width = 1020
    Height = 120
    Align = alTop
    DataSource = dsEndereco
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 1
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
        Title.Caption = 'Ativo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'STEXCLUIDO'
        Visible = False
      end>
  end
  object grdTitula: TDBGrid
    Left = 0
    Top = 304
    Width = 1020
    Height = 147
    Align = alTop
    DataSource = dsTitular
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'NMEMPRESA'
        Title.Caption = 'Empresa'
        Width = -1
        Visible = False
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
        Title.Caption = 'Funcionario'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUCNPJCPF'
        Title.Caption = 'CNPJ/CPF'
        Width = 107
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DTNASCIMENTO'
        Title.Caption = 'Dt.Nascimento'
        Width = 94
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DTCADASTRO'
        Title.Caption = 'Dt. Cadastro'
        Width = 86
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TXEMAIL'
        Title.Caption = 'e-mail'
        Width = 220
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TLRESIDENCIAL'
        Title.Caption = 'Tel. Residencial'
        Width = 105
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TLCELULAR'
        Title.Caption = 'Celular'
        Width = 136
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
  object grdEnderecoTit: TDBGrid
    Left = 0
    Top = 464
    Width = 1020
    Height = 131
    Align = alClient
    DataSource = dsEnderecoTit
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 3
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
        Title.Caption = 'Ativo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'STEXCLUIDO'
        Visible = False
      end>
  end
  object qryEmpresa: TFDQuery
    Connection = frmMain.FDConnection1
    SQL.Strings = (
      
        'SELECT A.IDEMPRESA, A.NMEMPRESA, A.NUCNPJ, A.STATIVO, A.STEXCLUI' +
        'DO'
      'FROM CADEMPRESA A'
      'WHERE A.STEXCLUIDO = '#39'N'#39
      'ORDER BY A.IDEMPRESA')
    Left = 368
    Top = 16
  end
  object dsEmpresa: TDataSource
    DataSet = qryEmpresa
    Left = 396
    Top = 16
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
    Left = 464
    Top = 16
  end
  object dsEndereco: TDataSource
    DataSet = qryEndereco
    Left = 492
    Top = 16
  end
  object qryTitular: TFDQuery
    IndexFieldNames = 'IDEMPRESA'
    MasterSource = dsEmpresa
    MasterFields = 'IDEMPRESA'
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
    Left = 568
    Top = 320
  end
  object dsTitular: TDataSource
    DataSet = qryTitular
    Left = 596
    Top = 320
  end
  object qryEnderecoTit: TFDQuery
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
    Left = 648
    Top = 320
  end
  object dsEnderecoTit: TDataSource
    DataSet = qryEnderecoTit
    Left = 676
    Top = 320
  end
end
