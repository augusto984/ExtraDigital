unit uCidade;

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
  TfrmCidade = class(TForm)
    pnBotoes: TPanel;
    SpeedButtonInsert: TcxButton;
    SpeedButtonDelete: TcxButton;
    SpeedButtonEdit: TcxButton;
    SpeedButtonPost: TcxButton;
    SpeedButtonCancel: TcxButton;
    qryCidade: TFDQuery;
    dsCidade: TDataSource;
    pgCidade: TPageControl;
    tbsRegiao: TTabSheet;
    tbsManutencao: TTabSheet;
    pnManutencao: TPanel;
    lbCidade: TLabel;
    lbUF: TLabel;
    edCidade: TEdit;
    grdCidade: TDBGrid;
    qryAux: TFDQuery;
    qryEstado: TFDQuery;
    edUF: TComboBox;
    procedure FormShow(Sender: TObject);
    procedure SpeedButtonInsertClick(Sender: TObject);
    procedure SpeedButtonDeleteClick(Sender: TObject);
    procedure SpeedButtonEditClick(Sender: TObject);
    procedure SpeedButtonCancelClick(Sender: TObject);
    procedure SpeedButtonPostClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure grdCidadeDblClick(Sender: TObject);
  private
    { Private declarations }
    Opr,Comando:String;
    procedure LimpaTela;
    procedure AjustaBotoes;
    procedure AtribuiValores;
    procedure CarregaUF;
  public
    { Public declarations }
  end;

var
  frmCidade: TfrmCidade;

implementation

{$R *.dfm}

uses uMain;

procedure TfrmCidade.LimpaTela;
var i:Integer;
begin
  for i := 0 to componentCount-1 do begin
    if (Components[i] is TEdit) then
       TEdit(Components[i]).Clear;
    if (Components[i] is TComboBox) then
       TComboBox(Components[i]).Clear;

  end;
end;

procedure TfrmCidade.SpeedButtonCancelClick(Sender: TObject);
begin
  LimpaTela;
  Opr:='';
  AjustaBotoes;
  pgCidade.ActivePageIndex:=0;
  grdCidade.SetFocus;
end;

procedure TfrmCidade.SpeedButtonDeleteClick(Sender: TObject);
begin
  if not qryCidade.IsEmpty then begin
    if MessageDlg('Confirma a exclus�o ?',mtConfirmation,[mbYes,mbNo],0) = mrYes then begin
      try
        Comando:= 'DELETE FROM CADCIDADE WHERE IDCIDADE = ''' +qryCidade.FieldByName('IDCIDADE').AsString+'''';
        qryAux.Close;
        qryAux.SQL.Text:=Comando;
        qryAux.ExecSQL;

      finally
        qryCidade.Close;
        qryCidade.Open();
        Opr:='';
        AjustaBotoes;
        pgCidade.ActivePageIndex:=0;
      end;
    end;
  end;
end;

procedure TfrmCidade.SpeedButtonEditClick(Sender: TObject);
begin
  if not qryCidade.IsEmpty then begin
    Opr:='E';
    AjustaBotoes;
    if pgCidade.ActivePageIndex = 0 then begin
      LimpaTela;
      AtribuiValores;
    end;
    pgCidade.ActivePageIndex:=1;
    edCidade.SetFocus;
  end;
end;

procedure TfrmCidade.SpeedButtonInsertClick(Sender: TObject);
begin
  pgCidade.ActivePageIndex := 1;
  LimpaTela;
  Opr:='I';
  AjustaBotoes;
  edCidade.SetFocus;
end;

procedure TfrmCidade.SpeedButtonPostClick(Sender: TObject);
var strCodigo, strUF:string;
begin
  if Length(Trim(edCidade.Text)) = 0 then begin
    MessageDlg('Cidade n�o informado',mtInformation,[mbOK],0);
    exit;
  end;
  if Length(Trim(edUF.Text)) = 0 then begin
    MessageDlg('UF n�o informada',mtInformation,[mbOK],0);
    exit;
  end;

  qryAux.Close;
  qryAux.Open('SELECT IDUF FROM CADUF WHERE SGESTADO = '''+edUF.Text+'''');
  strUF:=qryAux.FieldByName('IDUF').AsString;


  if Opr = 'I' then begin begin
    qryAux.Close;
    qryAux.SQL.Text:='SELECT max(IDCIDADE)+1 QTD FROM CADCIDADE';
    qryAux.Open;
    strCodigo:=qryAux.FieldByName('QTD').AsString;
    Comando:='INSERT INTO CADCIDADE (IDCIDADE, NMCIDADE, IDUF) VALUES ('''+strCodigo+''','''+edCidade.Text+''','''+strUF+''')';
  end;
  end
  else begin
    Comando:=' UPDATE CADCIDADE SET '+
             ' NMCIDADE = '''+edCidade.Text+''', '+
             ' IDUF = '''+strUF+''' '+
             ' WHERE IDCIDADE = '''+qryCidade.FieldByName('IDCIDADE').AsString+'''';
  end;
  qryAux.Close;
  qryAux.SQL.Text:=Comando;
  qryAux.ExecSQL;
  qryCidade.Close;
  qryCidade.Open();
  pgCidade.ActivePageIndex:=0;
  grdCidade.SetFocus;
  Opr:='';
  AjustaBotoes;
end;

procedure TfrmCidade.AjustaBotoes;
begin
  if (Opr = 'I') then begin
    SpeedButtonInsert.Enabled:=False;
    SpeedButtonDelete.Enabled:=False;
    SpeedButtonEdit.Enabled:=False;
    SpeedButtonPost.Enabled:=True;
    SpeedButtonCancel.Enabled:=True;
    CarregaUF;
    pnManutencao.Enabled:=True;
  end
  else if Opr = 'E' then begin
    SpeedButtonInsert.Enabled:=False;
    SpeedButtonDelete.Enabled:=False;
    SpeedButtonEdit.Enabled:=False;
    SpeedButtonPost.Enabled:=True;
    SpeedButtonCancel.Enabled:=True;
    CarregaUF;
    pnManutencao.Enabled:=True;
  end
  else if Opr = 'C' then begin
    SpeedButtonInsert.Enabled:=True;
    SpeedButtonDelete.Enabled:=True;
    SpeedButtonEdit.Enabled:=True;
    SpeedButtonPost.Enabled:=False;
    SpeedButtonCancel.Enabled:=True;
    pnManutencao.Enabled:=False;
  end
  else begin
    SpeedButtonInsert.Enabled:=True;
    SpeedButtonDelete.Enabled:=not qryCidade.IsEmpty;
    SpeedButtonEdit.Enabled:=not qryCidade.IsEmpty;
    SpeedButtonPost.Enabled:=False;
    SpeedButtonCancel.Enabled:=False;
    pnManutencao.Enabled:=True;
  end;
end;

procedure TfrmCidade.AtribuiValores;
begin
  edCidade.Text:=qryCidade.FieldByName('NMCIDADE').AsString;
  edUF.Text:=qryCidade.FieldByName('SGESTADO').AsString;
end;

procedure TfrmCidade.CarregaUF;
begin
  qryEstado.Close;
  qryEstado.Open;
  if not qryEstado.IsEmpty then begin
    qryEstado.First;
    while not qryEstado.Eof do begin
      edUF.Items.Add(qryEstado.FieldByName('sgestado').AsString);
      qryEstado.Next;
    end;
  end;

end;

procedure TfrmCidade.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    Keybd_event(VK_TAB, 0, 0, 0);
end;

procedure TfrmCidade.FormShow(Sender: TObject);
begin
  qryCidade.Close;
  qryCidade.Open;
  pgCidade.ActivePageIndex:=0;
  grdCidade.SetFocus;
  Opr:='';
  AjustaBotoes;
end;

procedure TfrmCidade.grdCidadeDblClick(Sender: TObject);
begin
  if not qryCidade.IsEmpty then begin
    Opr:='C';
    AjustaBotoes;
    pgCidade.ActivePageIndex:=1;
    LimpaTela;
    AtribuiValores;
  end;
end;

end.
