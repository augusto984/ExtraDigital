unit uTitular;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, cxControls, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, cxDBData, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, Vcl.ComCtrls,
  cxContainer, cxTextEdit,
  cxDataControllerConditionalFormattingRulesManagerDialog,Vcl.Grids, Vcl.DBGrids;

type
  TfrmTitular = class(TForm)
    pnBotoes: TPanel;
    SpeedButtonInsert: TcxButton;
    SpeedButtonDelete: TcxButton;
    SpeedButtonEdit: TcxButton;
    SpeedButtonPost: TcxButton;
    SpeedButtonCancel: TcxButton;
    qryTitular: TFDQuery;
    dsTitular: TDataSource;
    pgTitular: TPageControl;
    tbsRegiao: TTabSheet;
    tbsManutencao: TTabSheet;
    pnManutencao: TPanel;
    lbEmpresa: TLabel;
    edTitular: TEdit;
    grdTitula: TDBGrid;
    qryAux: TFDQuery;
    edEmpresa: TComboBox;
    lbTitular: TLabel;
    lbDocumento: TLabel;
    edDocumento: TEdit;
    edDtNascimento: TEdit;
    lbDtNascimento: TLabel;
    lbEmail: TLabel;
    edEmail: TEdit;
    lbResidencial: TLabel;
    edResidencial: TEdit;
    Label2: TLabel;
    lbCelular: TLabel;
    edCelular: TEdit;
    pnTitular: TPanel;
    pnEnd: TPanel;
    Label1: TLabel;
    pgEndereco: TPageControl;
    tbsGrid: TTabSheet;
    grdEndereco: TDBGrid;
    tbsManutEnd: TTabSheet;
    pnManutencaoEnd: TPanel;
    pnBotoesEnd: TPanel;
    SpeedButtonInsertEnd: TcxButton;
    SpeedButtonDeleteEnd: TcxButton;
    SpeedButtonEditEnd: TcxButton;
    SpeedButtonPostEnd: TcxButton;
    SpeedButtonCancelEnd: TcxButton;
    qryEndereco: TFDQuery;
    dsEndereco: TDataSource;
    lbEndereco: TLabel;
    edEndereco: TEdit;
    lbNumero: TLabel;
    edNumero: TEdit;
    lbBairro: TLabel;
    edBairro: TEdit;
    lbCidade: TLabel;
    edCidade: TComboBox;
    lbUF: TLabel;
    edUF: TComboBox;
    lbCEP: TLabel;
    edCEP: TEdit;
    edAtivoEnd: TCheckBox;
    procedure FormShow(Sender: TObject);
    procedure SpeedButtonInsertClick(Sender: TObject);
    procedure SpeedButtonDeleteClick(Sender: TObject);
    procedure SpeedButtonEditClick(Sender: TObject);
    procedure SpeedButtonCancelClick(Sender: TObject);
    procedure SpeedButtonPostClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure grdTitulaDblClick(Sender: TObject);
    procedure SpeedButtonInsertEndClick(Sender: TObject);
    procedure SpeedButtonCancelEndClick(Sender: TObject);
    procedure SpeedButtonDeleteEndClick(Sender: TObject);
    procedure SpeedButtonEditEndClick(Sender: TObject);
    procedure SpeedButtonPostEndClick(Sender: TObject);
    procedure grdEnderecoDblClick(Sender: TObject);
  private
    { Private declarations }
    Opr,OprEnd,Comando:String;
    intTit,intEnd:Integer;
    procedure LimpaTela;
    procedure AjustaBotoes;
    procedure AjustaBotoesEnd;
    procedure AtribuiValores;
    procedure AtribuiValoresEnd;
    procedure CarregaEmpresa;
    procedure AbreTabelas;
    procedure CarregaUF;
    procedure CarregaCidade;
  public
    { Public declarations }
  end;

var
  frmTitular: TfrmTitular;

implementation

{$R *.dfm}

uses uMain;

procedure TfrmTitular.LimpaTela;
var i:Integer;
begin
  for i := 0 to componentCount-1 do begin
    if (Components[i] is TEdit) then
       TEdit(Components[i]).Clear;
    if (Components[i] is TComboBox) then
       TComboBox(Components[i]).Clear;
  end;
end;

procedure TfrmTitular.SpeedButtonCancelClick(Sender: TObject);
begin
  LimpaTela;
  Opr:='';
  AjustaBotoes;
  pgTitular.ActivePageIndex:=0;
  grdTitula.SetFocus;
end;


procedure TfrmTitular.SpeedButtonCancelEndClick(Sender: TObject);
begin
  LimpaTela;
  OprEnd:='';
  AjustaBotoesEnd;
  pgEndereco.ActivePageIndex:=0;
  grdTitula.SetFocus;
end;

procedure TfrmTitular.SpeedButtonDeleteClick(Sender: TObject);
var vDataAtual:string;
begin
  if not qryTitular.IsEmpty then begin
    if MessageDlg('Confirma a exclus�o ?',mtConfirmation,[mbYes,mbNo],0) = mrYes then begin
      try
        qryAux.Close;
        qryAux.Open('SELECT CURRENT_DATE DATA_ATUAL FROM RDB$DATABASE');
        vDataAtual:=qryAux.FieldByName('DATA_ATUAL').AsString;
        vDataAtual:=copy(vDataAtual,7,4)+'-'+copy(vDataAtual,4,2)+'-'+copy(vDataAtual,1,2);

        Comando:= 'UPDATE CADTITULAR SET STEXCLUIDO = ''S'', DTEXCLUIDO = '''+vDataAtual+''' WHERE IDTITULAR = '''+qryTitular.FieldByName('IDTITULAR').AsString+'''';
        qryAux.Close;
        qryAux.SQL.Text:=Comando;
        qryAux.ExecSQL;

      finally
        AbreTabelas;
        Opr:='';
        AjustaBotoes;
        pgTitular.ActivePageIndex:=0;
      end;
    end;
  end;
end;

procedure TfrmTitular.SpeedButtonDeleteEndClick(Sender: TObject);
var vDataAtual:string;
begin
  if not qryEndereco.IsEmpty then begin
    if MessageDlg('Confirma a exclus�o ?',mtConfirmation,[mbYes,mbNo],0) = mrYes then begin
      try
        qryAux.Close;
        qryAux.Open('SELECT CURRENT_DATE DATA_ATUAL FROM RDB$DATABASE');
        vDataAtual:=qryAux.FieldByName('DATA_ATUAL').AsString;
        vDataAtual:=copy(vDataAtual,7,4)+'-'+copy(vDataAtual,4,2)+'-'+copy(vDataAtual,1,2);

        Comando:= 'UPDATE CADENDERECOS SET STEXCLUIDO = ''S'', DTEXCLUIDO = '''+vDataAtual+''' WHERE IDENDERECO = '''+qryEndereco.FieldByName('IDENDERECO').AsString+'''';
        qryAux.Close;
        qryAux.SQL.Text:=Comando;
        qryAux.ExecSQL;

      finally
        AbreTabelas;
        OprEnd:='';
        AjustaBotoesEnd;
        pgEndereco.ActivePageIndex:=0;
      end;
    end;
  end;
end;

procedure TfrmTitular.SpeedButtonEditClick(Sender: TObject);
begin
  if not qryTitular.IsEmpty then begin
    Opr:='E';
    AjustaBotoes;
    if pgTitular.ActivePageIndex = 0 then begin
      LimpaTela;
      AtribuiValores;
    end;
    pgTitular.ActivePageIndex:=1;
    edEmpresa.SetFocus;
  end;
end;

procedure TfrmTitular.SpeedButtonEditEndClick(Sender: TObject);
begin
  if not qryEndereco.IsEmpty then begin
    OprEnd:='E';
    AjustaBotoesEnd;
    if pgEndereco.ActivePageIndex = 0 then begin
      LimpaTela;
      AtribuiValoresEnd;
    end;
    pgEndereco.ActivePageIndex:=1;
    edEndereco.SetFocus;
  end;
end;

procedure TfrmTitular.SpeedButtonInsertClick(Sender: TObject);
begin
  pgTitular.ActivePageIndex := 1;
  LimpaTela;
  Opr:='I';
  AjustaBotoes;
  edEmpresa.SetFocus;
end;

procedure TfrmTitular.SpeedButtonInsertEndClick(Sender: TObject);
begin
  pgEndereco.ActivePageIndex := 1;
  LimpaTela;
  OprEnd:='I';
  AjustaBotoesEnd;
  edEndereco.SetFocus;
end;

procedure TfrmTitular.SpeedButtonPostClick(Sender: TObject);
var strCodigo, strEmpresa, strDataCadastro, strNascimento:string;
begin
  if Length(Trim(edEmpresa.Text)) = 0 then begin
    MessageDlg('Empresa n�o informada',mtInformation,[mbOK],0);
    exit;
  end;
  if Length(Trim(edTitular.Text)) = 0 then begin
    MessageDlg('Funcion�rio n�o informado',mtInformation,[mbOK],0);
    exit;
  end;
  if Length(Trim(edDocumento.Text)) = 0 then begin
    MessageDlg('Documento n�o informado',mtInformation,[mbOK],0);
    exit;
  end;

  if Length(trim(edDtNascimento.Text)) <> 10 then begin
    MessageDlg('Data n�o informada corretamente',mtInformation,[mbOK],0);
    exit;
  end;


  qryAux.Close;
  qryAux.Open('SELECT CURRENT_DATE DATA_ATUAL FROM RDB$DATABASE');
  strDataCadastro:=qryAux.FieldByName('DATA_ATUAL').AsString;

  qryAux.Close;
  qryAux.Open('SELECT IDEMPRESA FROM CADEMPRESA WHERE NMEMPRESA = '''+edEmpresa.Text+'''');
  strEmpresa:=qryAux.FieldByName('IDEMPRESA').AsString;

  strNascimento:=copy(edDtNascimento.Text,7,4)+'-'+copy(edDtNascimento.Text,4,2)+'-'+copy(edDtNascimento.Text,1,2);
  strDataCadastro:=copy(strDataCadastro,7,4)+'-'+copy(strDataCadastro,4,2)+'-'+copy(strDataCadastro,1,2);


  if Opr = 'I' then begin begin
    qryAux.Close;
    qryAux.SQL.Text:='SELECT max(IDTITULAR)+1 QTD FROM CADTITULAR';
    qryAux.Open;


    strCodigo:=qryAux.FieldByName('QTD').AsString;
    Comando:='INSERT INTO CADTITULAR (IDTITULAR, IDEMPRESA, NMTITULAR, NUCNPJCPF, DTNASCIMENTO, DTCADASTRO, TXEMAIL, TLRESIDENCIAL, TLCELULAR, STEXCLUIDO) VALUES ('''+
              strCodigo+''','''+strEmpresa+''','''+edTitular.Text+''','''+edDocumento.Text+''','''+strNascimento+''','''+strDataCadastro+''','''+edEmail.Text+''','''+
              edResidencial.Text+''','''+edCelular.Text+''',''N'')';
  end;
  end
  else begin
    Comando:=' UPDATE CADTITULAR SET '+
             '   IDEMPRESA = '''+strEmpresa+''', '+
             '   NMTITULAR = '''+edTitular.Text+''', '+
             '   NUCNPJCPF = '''+edDocumento.Text+''', '+
             '   DTNASCIMENTO = '''+strNascimento+''', '+
             '   TXEMAIL = '''+edEmail.Text+''', '+
             '   TLRESIDENCIAL = '''+edResidencial.Text+''', '+
             '   TLCELULAR= '''+edCelular.Text+''' '+
             ' WHERE IDTITULAR = '''+qryTitular.FieldByName('IDTITULAR').AsString+'''';
  end;
  qryAux.Close;
  qryAux.SQL.Text:=Comando;
  qryAux.ExecSQL;
  AbreTabelas;
  pgTitular.ActivePageIndex:=0;
  grdTitula.SetFocus;
  Opr:='';
  AjustaBotoes;
end;

procedure TfrmTitular.SpeedButtonPostEndClick(Sender: TObject);
var strCodigo, strAtivo, strCidade, strUF:String;
begin
  if Length(Trim(edEndereco.Text)) = 0 then begin
    MessageDlg('Endere�o n�o informado',mtInformation,[mbOK],0);
    exit;
  end;
  if Length(Trim(edNumero.Text)) = 0 then begin
    MessageDlg('N�mero n�o informado',mtInformation,[mbOK],0);
    exit;
  end;
  if Length(Trim(edCidade.Text)) = 0 then begin
    MessageDlg('Cidade n�o informada',mtInformation,[mbOK],0);
    exit;
  end;
  if Length(Trim(edUF.Text)) = 0 then begin
    MessageDlg('UF n�o informado',mtInformation,[mbOK],0);
    exit;
  end;

  if edAtivoEnd.Checked then
    strAtivo:='S'
  else
    strAtivo:='N';

  qryAux.Close;
  qryAux.Open('SELECT IDUF FROM CADUF WHERE SGESTADO = '''+edUF.Text+'''');
  strUF:=qryAux.FieldByName('IDUF').AsString;

  qryAux.Close;
  qryAux.Open('SELECT IDCIDADE FROM CADCIDADE WHERE NMCIDADE = '''+edCidade.Text+'''');
  strCidade:=qryAux.FieldByName('IDCIDADE').AsString;


  if OprEnd = 'I' then begin begin
    qryAux.Close;
    qryAux.SQL.Text:='SELECT max(IDENDERECO)+1 QTD FROM CADENDERECOS';
    qryAux.Open;
    strCodigo:=qryAux.FieldByName('QTD').AsString;
    Comando:=' INSERT INTO CADENDERECOS (IDENDERECO, IDTITULAR, NMENDERECO, NUENDERECO, NMBAIRRO, IDCIDADE, IDUF, NUCEP, STATIVO, STEXCLUIDO, TPCADASTRO) '+
             ' VALUES ('''+strCodigo+''','''+qryTitular.FieldByName('IDTITULAR').AsString+''','''+edEndereco.Text+''','''+edNumero.Text+''','''+
             edBairro.Text+''','''+strCidade+''','''+strUF+''','''+edCEP.Text+''','''+strAtivo+''',''N'',''P'')';
  end;
  end
  else begin
    strCodigo:=qryEndereco.FieldByName('IDENDERECO').AsString;
    Comando:=' UPDATE CADENDERECOS SET '+
             ' NMENDERECO = '''+edEndereco.Text+''', '+
             ' NUENDERECO = '''+edNumero.Text+''', '+
             ' NMBAIRRO = '''+edBairro.Text+''', '+
             ' IDCIDADE = '''+strCidade+''', '+
             ' IDUF = '''+strUF+''', '+
             ' NUCEP = '''+edCEP.Text+''', '+
             ' STATIVO = '''+strAtivo+''' '+
             ' WHERE IDENDERECO = '''+qryEndereco.FieldByName('IDENDERECO').AsString+'''';
  end;
  qryAux.Close;
  qryAux.SQL.Text:=Comando;
  qryAux.ExecSQL;

  if strAtivo = 'S' then begin
    qryAux.Close;
    qryAux.Open(' SELECT * FROM CADENDERECOS WHERE IDTITULAR = '''+qryTitular.FieldByName('IDTITULAR').AsString+''' and STATIVO = ''S'' ');
    if not qryAux.IsEmpty then begin
      if qryAux.RecordCount > 1  then begin
        qryAux.Close;
        qryAux.SQL.Text:=' UPDATE CADENDERECOS SET STATIVO = ''N'' WHERE IDTITULAR = '''+qryTitular.FieldByName('IDTITULAR').AsString+''' ';
        qryAux.ExecSQL;

        qryAux.Close;
        qryAux.SQL.Text:=' UPDATE CADENDERECOS SET STATIVO = ''S'' WHERE IDENDERECO = '''+strCodigo+''' ';
        qryAux.ExecSQL;
      end;
    end;
  end;

  abreTabelas;
  pgEndereco.ActivePageIndex:=0;
  grdEndereco.SetFocus;
  OprEnd:='';
  AjustaBotoesEnd;
end;

procedure TfrmTitular.AbreTabelas;
begin
  qryTitular.Close;
  qryTitular.Open;
  qryEndereco.Close;
  qryEndereco.Open;
end;

procedure TfrmTitular.AjustaBotoes;
begin
  if (Opr = 'I') then begin
    SpeedButtonInsert.Enabled:=False;
    SpeedButtonDelete.Enabled:=False;
    SpeedButtonEdit.Enabled:=False;
    SpeedButtonPost.Enabled:=True;
    SpeedButtonCancel.Enabled:=True;
    CarregaEmpresa;
    pnManutencao.Enabled:=True;
    intTit:=pnTitular.Height;
    pnTitular.Align:=alClient;
    pnEnd.Visible:=False;
  end
  else if Opr = 'E' then begin
    SpeedButtonInsert.Enabled:=False;
    SpeedButtonDelete.Enabled:=False;
    SpeedButtonEdit.Enabled:=False;
    SpeedButtonPost.Enabled:=True;
    SpeedButtonCancel.Enabled:=True;
    CarregaEmpresa;
    pnManutencao.Enabled:=True;
    intTit:=pnTitular.Height;
    pnTitular.Align:=alClient;
    pnEnd.Visible:=False;
  end
  else if Opr = 'C' then begin
    SpeedButtonInsert.Enabled:=False;
    SpeedButtonDelete.Enabled:=False;
    SpeedButtonEdit.Enabled:=False;
    SpeedButtonPost.Enabled:=False;
    SpeedButtonCancel.Enabled:=True;
    pnManutencao.Enabled:=False;
    intTit:=pnTitular.Height;
    pnTitular.Align:=alClient;
    pnEnd.Visible:=False;
  end
  else begin
    SpeedButtonInsert.Enabled:=True;
    SpeedButtonDelete.Enabled:=not qryTitular.IsEmpty;
    SpeedButtonEdit.Enabled:=not qryTitular.IsEmpty;
    SpeedButtonPost.Enabled:=False;
    SpeedButtonCancel.Enabled:=False;
    pnManutencao.Enabled:=True;
    pnTitular.Align:=alTop;
    pnTitular.Height:=intTit;
    pnEnd.Visible:=True;
  end;
end;

procedure TfrmTitular.AjustaBotoesEnd;
begin
  if (OprEnd = 'I') then begin
    SpeedButtonInsertEnd.Enabled:=False;
    SpeedButtonDeleteEnd.Enabled:=False;
    SpeedButtonEditEnd.Enabled:=False;
    SpeedButtonPostEnd.Enabled:=True;
    SpeedButtonCancelEnd.Enabled:=True;
    pnManutencaoEnd.Enabled:=True;
    CarregaUF;
    CarregaCidade;
    intEnd:=pnEnd.Height;
    pnEnd.Align:=alClient;
    pnTitular.Visible:=False;
  end
  else if OprEnd = 'E' then begin
    SpeedButtonInsertEnd.Enabled:=False;
    SpeedButtonDeleteEnd.Enabled:=False;
    SpeedButtonEditEnd.Enabled:=False;
    SpeedButtonPostEnd.Enabled:=True;
    SpeedButtonCancelEnd.Enabled:=True;
    pnManutencaoEnd.Enabled:=True;
    CarregaUF;
    CarregaCidade;
    intEnd:=pnEnd.Height;
    pnEnd.Align:=alClient;
    pnTitular.Visible:=False;
  end
  else if OprEnd = 'C' then begin
    SpeedButtonInsertEnd.Enabled:=False;
    SpeedButtonDeleteEnd.Enabled:=False;
    SpeedButtonEditEnd.Enabled:=False;
    SpeedButtonPostEnd.Enabled:=False;
    SpeedButtonCancelEnd.Enabled:=True;
    pnManutencaoEnd.Enabled:=False;
    intEnd:=pnEnd.Height;
    pnEnd.Align:=alClient;
    pnTitular.Visible:=False;
  end
  else begin
    SpeedButtonInsertEnd.Enabled:=True;
    SpeedButtonDeleteEnd.Enabled:=not qryTitular.IsEmpty;
    SpeedButtonEditEnd.Enabled:=not qryTitular.IsEmpty;
    SpeedButtonPostEnd.Enabled:=False;
    SpeedButtonCancelEnd.Enabled:=False;
    pnManutencaoEnd.Enabled:=True;
    pnEnd.Align:=alBottom;
    pnEnd.Height:=intEnd;
    pnTitular.Visible:=True;
  end;
end;

procedure TfrmTitular.AtribuiValores;
begin
  edEmpresa.Text:=qryTitular.FieldByName('NMEMPRESA').AsString;
  edTitular.Text:=qryTitular.FieldByName('NMTITULAR').AsString;
  edDocumento.Text:=qryTitular.FieldByName('NUCNPJCPF').AsString;
  edDtNascimento.Text:=qryTitular.FieldByName('DTNASCIMENTO').AsString;
  edEmail.Text:=qryTitular.FieldByName('TXEMAIL').AsString;
  edResidencial.Text:=qryTitular.FieldByName('TLRESIDENCIAL').AsString;
  edCelular.Text:=qryTitular.FieldByName('TLCELULAR').AsString;
end;

procedure TfrmTitular.AtribuiValoresEnd;
begin
  edEndereco.Text:=qryEndereco.FieldByName('NMENDERECO').AsString;
  edNumero.Text:=qryEndereco.FieldByName('NUENDERECO').AsString;
  edBairro.Text:=qryEndereco.FieldByName('NMBAIRRO').AsString;
  edCidade.Text:=qryEndereco.FieldByName('NMCIDADE').AsString;
  edUF.Text:=qryEndereco.FieldByName('SGESTADO').AsString;
  edCEP.Text:=qryEndereco.FieldByName('NUCEP').AsString;
  edAtivoEnd.Checked:=qryEndereco.FieldByName('STATIVO').AsString='S';
end;

procedure TfrmTitular.CarregaCidade;
begin
  qryAux.Close;
  qryAux.Open(' SELECT NMCIDADE FROM CADCIDADE ORDER BY NMCIDADE ');
  if not qryAux.IsEmpty then begin
    qryAux.First;
    while not qryAux.Eof do begin
      edCidade.Items.Add(qryAux.FieldByName('NMCIDADE').AsString);
      qryAux.Next;
    end;
  end;
end;

procedure TfrmTitular.CarregaEmpresa;
begin
  qryAux.Close;
  qryAux.Open('SELECT NMEMPRESA FROM CADEMPRESA WHERE STEXCLUIDO = ''N''');
  if not qryAux.IsEmpty then begin
    qryAux.First;
    while not qryAux.Eof do begin
      edEmpresa.Items.Add(qryAux.FieldByName('NMEMPRESA').AsString);
      qryAux.Next;
    end;
  end;
end;

procedure TfrmTitular.CarregaUF;
begin
  qryAux.Close;
  qryAux.Open(' select sgestado from caduf order by sgestado ');
  if not qryAux.IsEmpty then begin
    qryAux.First;
    while not qryAux.Eof do begin
      edUF.Items.Add(qryAux.FieldByName('sgestado').AsString);
      qryAux.Next;
    end;
  end;
end;

procedure TfrmTitular.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    Keybd_event(VK_TAB, 0, 0, 0);
end;

procedure TfrmTitular.FormShow(Sender: TObject);
begin
  intTit:=pnTitular.Height;
  intEnd:=pnEnd.Height;
  AbreTabelas;
  pgTitular.ActivePageIndex:=0;
  pgEndereco.ActivePageIndex:=0;
  grdTitula.SetFocus;
  Opr:='';
  OprEnd:='';
  AjustaBotoes;
  AjustaBotoesEnd;
end;

procedure TfrmTitular.grdEnderecoDblClick(Sender: TObject);
begin
  if not qryEndereco.IsEmpty then begin
    OprEnd:='C';
    AjustaBotoesEnd;
    pgEndereco.ActivePageIndex:=1;
    LimpaTela;
    AtribuiValoresEnd;
  end;
end;

procedure TfrmTitular.grdTitulaDblClick(Sender: TObject);
begin
  if not qryTitular.IsEmpty then begin
    Opr:='C';
    AjustaBotoes;
    pgTitular.ActivePageIndex:=1;
    LimpaTela;
    AtribuiValores;
  end;
end;

end.
