unit uConsulta;

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
  TfrmConsulta = class(TForm)
    qryEmpresa: TFDQuery;
    dsEmpresa: TDataSource;
    qryEndereco: TFDQuery;
    dsEndereco: TDataSource;
    grdEmpresa: TDBGrid;
    grdEndereco: TDBGrid;
    Label2: TLabel;
    Label3: TLabel;
    qryTitular: TFDQuery;
    dsTitular: TDataSource;
    qryEnderecoTit: TFDQuery;
    dsEnderecoTit: TDataSource;
    grdTitula: TDBGrid;
    grdEnderecoTit: TDBGrid;
    Label1: TLabel;
    Label4: TLabel;
    procedure FormShow(Sender: TObject);
    procedure SpeedButtonInsertEmpClick(Sender: TObject);
    procedure SpeedButtonDeleteEmpClick(Sender: TObject);
    procedure SpeedButtonEditEmpClick(Sender: TObject);
    procedure SpeedButtonCancelEmpClick(Sender: TObject);
    procedure SpeedButtonPostEmpClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure grdEmpresaDblClick(Sender: TObject);
    procedure SpeedButtonInsertEndClick(Sender: TObject);
    procedure SpeedButtonCancelEndClick(Sender: TObject);
    procedure SpeedButtonDeleteEndClick(Sender: TObject);
    procedure SpeedButtonEditEndClick(Sender: TObject);
    procedure SpeedButtonPostEndClick(Sender: TObject);
    procedure grdEnderecoDblClick(Sender: TObject);
  private
    { Private declarations }
    Opr,OprEnd,Comando:String;
    intEmp, intEnd:integer;
    procedure LimpaTela;
    procedure AjustaBotoesEmp;
    procedure AjustaBotoesEnd;
    procedure AtribuiValoresEmp;
    procedure AtribuiValoresEnd;
    procedure CarregaUF;
    procedure CarregaCidade;
    procedure AbreTabelas;
  public
    { Public declarations }
  end;

var
  frmConsulta: TfrmConsulta;

implementation

{$R *.dfm}

uses uMain;

procedure TfrmConsulta.LimpaTela;
var i:Integer;
begin
  for i := 0 to componentCount-1 do begin
    if (Components[i] is TEdit) then
       TEdit(Components[i]).Clear;
    if (Components[i] is TComboBox) then
       TComboBox(Components[i]).Clear;
  end;
end;

procedure TfrmConsulta.SpeedButtonCancelEmpClick(Sender: TObject);
begin
//  LimpaTela;
//  Opr:='';
//  AjustaBotoesEmp;
//  pgEmpresa.ActivePageIndex:=0;
//  grdEmpresa.SetFocus;
end;

procedure TfrmConsulta.SpeedButtonCancelEndClick(Sender: TObject);
begin
//  LimpaTela;
//  OprEnd:='';
//  AjustaBotoesEnd;
//  pgEndereco.ActivePageIndex:=0;
//  grdEmpresa.SetFocus;
end;

procedure TfrmConsulta.SpeedButtonDeleteEmpClick(Sender: TObject);
begin
//  if not qryEmpresa.IsEmpty then begin
//    if MessageDlg('Confirma a exclus�o ?',mtConfirmation,[mbYes,mbNo],0) = mrYes then begin
//      try
//        Comando:= 'UPDATE CADEMPRESA SET STEXCLUIDO = ''S'' WHERE IDEMPRESA = '''+qryEmpresa.FieldByName('IDEMPRESA').AsString+'''';
//        qryAux.Close;
//        qryAux.SQL.Text:=Comando;
//        qryAux.ExecSQL;
//
//      finally
//        AbreTabelas;
//        Opr:='';
//        AjustaBotoesEmp;
//        pgEmpresa.ActivePageIndex:=0;
//      end;
//    end;
//  end;
end;

procedure TfrmConsulta.SpeedButtonDeleteEndClick(Sender: TObject);
var vDataAtual:String;
begin
//  if not qryEndereco.IsEmpty then begin
//    if MessageDlg('Confirma a exclus�o ?',mtConfirmation,[mbYes,mbNo],0) = mrYes then begin
//      try
//        qryAux.Close;
//        qryAux.Open('SELECT CURRENT_DATE DATA_ATUAL FROM RDB$DATABASE');
//        vDataAtual:=qryAux.FieldByName('DATA_ATUAL').AsString;
//        vDataAtual:=copy(vDataAtual,7,4)+'-'+copy(vDataAtual,4,2)+'-'+copy(vDataAtual,1,2);
//
//        Comando:= 'UPDATE CADENDERECOS SET STEXCLUIDO = ''S'', DTEXCLUIDO = '''+vDataAtual+''' WHERE IDENDERECO = '''+qryEndereco.FieldByName('IDENDERECO').AsString+'''';
//        qryAux.Close;
//        qryAux.SQL.Text:=Comando;
//        qryAux.ExecSQL;
//
//      finally
//        AbreTabelas;
//        OprEnd:='';
//        AjustaBotoesEnd;
//        pgEndereco.ActivePageIndex:=0;
//      end;
//    end;
//  end;
end;

procedure TfrmConsulta.SpeedButtonEditEmpClick(Sender: TObject);
begin
//  if not qryEmpresa.IsEmpty then begin
//    Opr:='E';
//    AjustaBotoesEmp;
//    if pgEmpresa.ActivePageIndex = 0 then begin
//      LimpaTela;
//      AtribuiValoresEmp;
//    end;
//    pgEmpresa.ActivePageIndex:=1;
//    edEmpresa.SetFocus;
//  end;
end;

procedure TfrmConsulta.SpeedButtonEditEndClick(Sender: TObject);
begin
//  if not qryEndereco.IsEmpty then begin
//    OprEnd:='E';
//    AjustaBotoesEnd;
//    if pgEndereco.ActivePageIndex = 0 then begin
//      LimpaTela;
//      AtribuiValoresEnd;
//    end;
//    pgEndereco.ActivePageIndex:=1;
//    edEndereco.SetFocus;
//  end;
end;

procedure TfrmConsulta.SpeedButtonInsertEmpClick(Sender: TObject);
begin
//  pgEmpresa.ActivePageIndex := 1;
//  LimpaTela;
//  Opr:='I';
//  AjustaBotoesEmp;
//  edEmpresa.SetFocus;
end;

procedure TfrmConsulta.SpeedButtonInsertEndClick(Sender: TObject);
begin
//  pgEndereco.ActivePageIndex := 1;
//  LimpaTela;
//  OprEnd:='I';
//  AjustaBotoesEnd;
//  edEndereco.SetFocus;
end;

procedure TfrmConsulta.SpeedButtonPostEmpClick(Sender: TObject);
var strCodigo, strAtivo:string;
begin
//  if Length(Trim(edEmpresa.Text)) = 0 then begin
//    MessageDlg('Empresa n�o informada',mtInformation,[mbOK],0);
//    exit;
//  end;
//  if Length(Trim(edCNPJ.Text)) = 0 then begin
//    MessageDlg('CNPJ n�o informado',mtInformation,[mbOK],0);
//    exit;
//  end;
//
//  if edAtivo.Checked then
//    strAtivo:='S'
//  else
//    strAtivo:='N';
//
//  if Opr = 'I' then begin begin
//    qryAux.Close;
//    qryAux.SQL.Text:='SELECT max(IDEMPRESA)+1 QTD FROM CADEMPRESA';
//    qryAux.Open;
//    strCodigo:=qryAux.FieldByName('QTD').AsString;
//    Comando:='INSERT INTO CADEMPRESA (IDEMPRESA, NMEMPRESA, NUCNPJ, STATIVO, STEXCLUIDO) VALUES ('''+strCodigo+''','''+edEmpresa.Text+''','''+edCNPJ.Text+''','''+strAtivo+''',''N'')';
//  end;
//  end
//  else begin
//    Comando:=' UPDATE CADEMPRESA SET '+
//             ' NMEMPRESA = '''+edEmpresa.Text+''', '+
//             ' NUCNPJ = '''+edCNPJ.Text+''', '+
//             ' STATIVO = '''+strAtivo+''' '+
//             ' WHERE IDEMPRESA = '''+qryEmpresa.FieldByName('IDEMPRESA').AsString+'''';
//  end;
//  qryAux.Close;
//  qryAux.SQL.Text:=Comando;
//  qryAux.ExecSQL;
//  abreTabelas;
//  pgEmpresa.ActivePageIndex:=0;
//  grdEmpresa.SetFocus;
//  Opr:='';
//  AjustaBotoesEmp;
end;

procedure TfrmConsulta.SpeedButtonPostEndClick(Sender: TObject);
var strCodigo, strAtivo, strCidade, strUF:String;
begin
//  if Length(Trim(edEndereco.Text)) = 0 then begin
//    MessageDlg('Endere�o n�o informado',mtInformation,[mbOK],0);
//    exit;
//  end;
//  if Length(Trim(edNumero.Text)) = 0 then begin
//    MessageDlg('N�mero n�o informado',mtInformation,[mbOK],0);
//    exit;
//  end;
//  if Length(Trim(edCidade.Text)) = 0 then begin
//    MessageDlg('Cidade n�o informada',mtInformation,[mbOK],0);
//    exit;
//  end;
//  if Length(Trim(edUF.Text)) = 0 then begin
//    MessageDlg('UF n�o informado',mtInformation,[mbOK],0);
//    exit;
//  end;
//
//  if edAtivoEnd.Checked then
//    strAtivo:='S'
//  else
//    strAtivo:='N';
//
//  qryAux.Close;
//  qryAux.Open('SELECT IDUF FROM CADUF WHERE SGESTADO = '''+edUF.Text+'''');
//  strUF:=qryAux.FieldByName('IDUF').AsString;
//
//  qryAux.Close;
//  qryAux.Open('SELECT IDCIDADE FROM CADCIDADE WHERE NMCIDADE = '''+edCidade.Text+'''');
//  strCidade:=qryAux.FieldByName('IDCIDADE').AsString;
//
//
//  if OprEnd = 'I' then begin begin
//    qryAux.Close;
//    qryAux.SQL.Text:='SELECT max(IDENDERECO)+1 QTD FROM CADENDERECOS';
//    qryAux.Open;
//    strCodigo:=qryAux.FieldByName('QTD').AsString;
//    Comando:=' INSERT INTO CADENDERECOS (IDENDERECO, IDEMPRESA, NMENDERECO, NUENDERECO, NMBAIRRO, IDCIDADE, IDUF, NUCEP, STATIVO, STEXCLUIDO, TPCADASTRO) '+
//             ' VALUES ('''+strCodigo+''','''+qryEmpresa.FieldByName('IDEMPRESA').AsString+''','''+edEndereco.Text+''','''+edNumero.Text+''','''+
//             edBairro.Text+''','''+strCidade+''','''+strUF+''','''+edCEP.Text+''','''+strAtivo+''',''N'',''E'')';
//  end;
//  end
//  else begin
//    strCodigo:=qryEndereco.FieldByName('IDENDERECO').AsString;
//    Comando:=' UPDATE CADENDERECOS SET '+
//             ' NMENDERECO = '''+edEndereco.Text+''', '+
//             ' NUENDERECO = '''+edNumero.Text+''', '+
//             ' NMBAIRRO = '''+edBairro.Text+''', '+
//             ' IDCIDADE = '''+strCidade+''', '+
//             ' IDUF = '''+strUF+''', '+
//             ' NUCEP = '''+edCEP.Text+''', '+
//             ' STATIVO = '''+strAtivo+''' '+
//             ' WHERE IDENDERECO = '''+qryEndereco.FieldByName('IDENDERECO').AsString+'''';
//  end;
//  qryAux.Close;
//  qryAux.SQL.Text:=Comando;
//  qryAux.ExecSQL;
//
//  if strAtivo = 'S' then begin
//    qryAux.Close;
//    qryAux.Open(' SELECT * FROM CADENDERECOS WHERE IDEMPRESA = '''+qryEmpresa.FieldByName('IDEMPRESA').AsString+''' and STATIVO = ''S'' ');
//    if not qryAux.IsEmpty then begin
//      if qryAux.RecordCount > 1  then begin
//        qryAux.Close;
//        qryAux.SQL.Text:=' UPDATE CADENDERECOS SET STATIVO = ''N'' WHERE IDEMPRESA = '''+qryEmpresa.FieldByName('IDEMPRESA').AsString+''' ';
//        qryAux.ExecSQL;
//
//        qryAux.Close;
//        qryAux.SQL.Text:=' UPDATE CADENDERECOS SET STATIVO = ''S'' WHERE IDENDERECO = '''+strCodigo+''' ';
//        qryAux.ExecSQL;
//      end;
//    end;
//  end;
//
//  abreTabelas;
//  pgEndereco.ActivePageIndex:=0;
//  grdEndereco.SetFocus;
//  OprEnd:='';
//  AjustaBotoesEnd;
end;

procedure TfrmConsulta.AbreTabelas;
begin
  qryEmpresa.Close;
  qryEmpresa.Open;
  qryEndereco.Close;
  qryEndereco.Open;
  qryTitular.Close;
  qryTitular.Open;
  qryEnderecoTit.Close;
  qryEnderecoTit.Open;
end;

procedure TfrmConsulta.AjustaBotoesEmp;
begin
//  if (Opr = 'I') then begin
//    SpeedButtonInsertEmp.Enabled:=False;
//    SpeedButtonDeleteEmp.Enabled:=False;
//    SpeedButtonEditEmp.Enabled:=False;
//    SpeedButtonPostEmp.Enabled:=True;
//    SpeedButtonCancelEmp.Enabled:=True;
//    pnManutencao.Enabled:=True;
//    intEmp:=pnEmp.Height;
//    pnEmp.Align:=alClient;
//    pnEnd.Visible:=False;
//  end
//  else if Opr = 'E' then begin
//    SpeedButtonInsertEmp.Enabled:=False;
//    SpeedButtonDeleteEmp.Enabled:=False;
//    SpeedButtonEditEmp.Enabled:=False;
//    SpeedButtonPostEmp.Enabled:=True;
//    SpeedButtonCancelEmp.Enabled:=True;
//    pnManutencao.Enabled:=True;
//    intEmp:=pnEmp.Height;
//    pnEmp.Align:=alClient;
//    pnEnd.Visible:=False;
//  end
//  else if Opr = 'C' then begin
//    SpeedButtonInsertEmp.Enabled:=False;
//    SpeedButtonDeleteEmp.Enabled:=False;
//    SpeedButtonEditEmp.Enabled:=False;
//    SpeedButtonPostEmp.Enabled:=False;
//    SpeedButtonCancelEmp.Enabled:=True;
//    pnManutencao.Enabled:=False;
//    intEmp:=pnEmp.Height;
//    pnEmp.Align:=alClient;
//    pnEnd.Visible:=False;
//  end
//  else begin
//    SpeedButtonInsertEmp.Enabled:=True;
//    SpeedButtonDeleteEmp.Enabled:=not qryEmpresa.IsEmpty;
//    SpeedButtonEditEmp.Enabled:=not qryEmpresa.IsEmpty;
//    SpeedButtonPostEmp.Enabled:=False;
//    SpeedButtonCancelEmp.Enabled:=False;
//    pnManutencao.Enabled:=True;
//    pnEmp.Align:=alTop;
//    pnEmp.Height:=intEmp;
//    pnEnd.Visible:=True;
//  end;
end;

procedure TfrmConsulta.AjustaBotoesEnd;
begin
//  if (OprEnd = 'I') then begin
//    SpeedButtonInsertEnd.Enabled:=False;
//    SpeedButtonDeleteEnd.Enabled:=False;
//    SpeedButtonEditEnd.Enabled:=False;
//    SpeedButtonPostEnd.Enabled:=True;
//    SpeedButtonCancelEnd.Enabled:=True;
//    pnManutencaoEnd.Enabled:=True;
//    CarregaUF;
//    CarregaCidade;
//    intEnd:=pnEnd.Height;
//    pnEnd.Align:=alClient;
//    pnEmp.Visible:=False;
//  end
//  else if OprEnd = 'E' then begin
//    SpeedButtonInsertEnd.Enabled:=False;
//    SpeedButtonDeleteEnd.Enabled:=False;
//    SpeedButtonEditEnd.Enabled:=False;
//    SpeedButtonPostEnd.Enabled:=True;
//    SpeedButtonCancelEnd.Enabled:=True;
//    pnManutencao.Enabled:=True;
//    pnManutencaoEnd.Enabled:=True;
//    CarregaUF;
//    CarregaCidade;
//    intEnd:=pnEnd.Height;
//    pnEnd.Align:=alClient;
//    pnEmp.Visible:=False;
//  end
//  else if OprEnd = 'C' then begin
//    SpeedButtonInsertEnd.Enabled:=False;
//    SpeedButtonDeleteEnd.Enabled:=False;
//    SpeedButtonEditEnd.Enabled:=False;
//    SpeedButtonPostEnd.Enabled:=False;
//    SpeedButtonCancelEnd.Enabled:=True;
//    pnManutencaoEnd.Enabled:=False;
//    intEnd:=pnEnd.Height;
//    pnEnd.Align:=alClient;
//    pnEmp.Visible:=False;
//  end
//  else begin
//    SpeedButtonInsertEnd.Enabled:=True;
//    SpeedButtonDeleteEnd.Enabled:=not qryEmpresa.IsEmpty;
//    SpeedButtonEditEnd.Enabled:=not qryEmpresa.IsEmpty;
//    SpeedButtonPostEnd.Enabled:=False;
//    SpeedButtonCancelEnd.Enabled:=False;
//    pnManutencao.Enabled:=True;
//    pnEnd.Align:=alBottom;
//    pnEnd.Height:=intEnd;
//    pnEmp.Visible:=True;
//  end;
end;

procedure TfrmConsulta.AtribuiValoresEmp;
begin
//  edEmpresa.Text:=qryEmpresa.FieldByName('NMEMPRESA').AsString;
//  edCNPJ.Text:=qryEmpresa.FieldByName('NUCNPJ').AsString;
//  edAtivo.Checked:=qryEmpresa.FieldByName('STATIVO').AsString='S';
end;

procedure TfrmConsulta.AtribuiValoresEnd;
begin
//  edEndereco.Text:=qryEndereco.FieldByName('NMENDERECO').AsString;
//  edNumero.Text:=qryEndereco.FieldByName('NUENDERECO').AsString;
//  edBairro.Text:=qryEndereco.FieldByName('NMBAIRRO').AsString;
//  edCidade.Text:=qryEndereco.FieldByName('NMCIDADE').AsString;
//  edUF.Text:=qryEndereco.FieldByName('SGESTADO').AsString;
//  edCEP.Text:=qryEndereco.FieldByName('NUCEP').AsString;
//  edAtivoEnd.Checked:=qryEndereco.FieldByName('STATIVO').AsString='S';
end;

procedure TfrmConsulta.CarregaCidade;
begin
//  qryAux.Close;
//  qryAux.Open(' SELECT NMCIDADE FROM CADCIDADE ORDER BY NMCIDADE ');
//  if not qryAux.IsEmpty then begin
//    qryAux.First;
//    while not qryAux.Eof do begin
//      edCidade.Items.Add(qryAux.FieldByName('NMCIDADE').AsString);
//      qryAux.Next;
//    end;
//  end;
end;

procedure TfrmConsulta.CarregaUF;
begin
//  qryAux.Close;
//  qryAux.Open(' select sgestado from caduf order by sgestado ');
//  if not qryAux.IsEmpty then begin
//    qryAux.First;
//    while not qryAux.Eof do begin
//      edUF.Items.Add(qryAux.FieldByName('sgestado').AsString);
//      qryAux.Next;
//    end;
//  end;
end;

procedure TfrmConsulta.FormKeyPress(Sender: TObject; var Key: Char);
begin
//  if Key = #13 then
//    Keybd_event(VK_TAB, 0, 0, 0);
end;

procedure TfrmConsulta.FormShow(Sender: TObject);
begin
//  intEmp:=pnEmp.Height;
//  intEnd:=pnEnd.Height;
  AbreTabelas;
//  pgEmpresa.ActivePageIndex:=0;
//  grdEmpresa.SetFocus;
//  pgEndereco.ActivePageIndex:=0;
//  Opr:='';
//  OprEnd:='';
//  AjustaBotoesEmp;
//  AjustaBotoesEnd;
end;

procedure TfrmConsulta.grdEmpresaDblClick(Sender: TObject);
begin
//  if not qryEmpresa.IsEmpty then begin
//    Opr:='C';
//    AjustaBotoesEmp;
//    pgEmpresa.ActivePageIndex:=1;
//    LimpaTela;
//    AtribuiValoresEmp;
//  end;
end;

procedure TfrmConsulta.grdEnderecoDblClick(Sender: TObject);
begin
//  if not qryEndereco.IsEmpty then begin
//    OprEnd:='C';
//    AjustaBotoesEnd;
//    pgEndereco.ActivePageIndex:=1;
//    LimpaTela;
//    AtribuiValoresEnd;
//  end;
end;

end.
