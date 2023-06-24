unit uEstado;

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
  TfrmEstado = class(TForm)
    pnBotoes: TPanel;
    SpeedButtonInsert: TcxButton;
    SpeedButtonDelete: TcxButton;
    SpeedButtonEdit: TcxButton;
    SpeedButtonPost: TcxButton;
    SpeedButtonCancel: TcxButton;
    qryEstado: TFDQuery;
    dsEstado: TDataSource;
    pgEstado: TPageControl;
    tbsRegiao: TTabSheet;
    tbsManutencao: TTabSheet;
    pnManutencao: TPanel;
    lbEstado: TLabel;
    lbSigla: TLabel;
    edEstado: TEdit;
    edSigla: TEdit;
    grdEstado: TDBGrid;
    qryAux: TFDQuery;
    procedure FormShow(Sender: TObject);
    procedure SpeedButtonInsertClick(Sender: TObject);
    procedure SpeedButtonDeleteClick(Sender: TObject);
    procedure SpeedButtonEditClick(Sender: TObject);
    procedure SpeedButtonCancelClick(Sender: TObject);
    procedure SpeedButtonPostClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure grdEstadoDblClick(Sender: TObject);
  private
    { Private declarations }
    Opr,Comando:String;
    procedure LimpaTela;
    procedure AjustaBotoes;
    procedure AtribuiValores;
  public
    { Public declarations }
  end;

var
  frmEstado: TfrmEstado;

implementation

{$R *.dfm}

uses uMain;

procedure TfrmEstado.LimpaTela;
var i:Integer;
begin
  for i := 0 to componentCount-1 do begin
    if (Components[i] is TEdit) then
       TEdit(Components[i]).Clear;
  end;
end;

procedure TfrmEstado.SpeedButtonCancelClick(Sender: TObject);
begin
  LimpaTela;
  Opr:='';
  AjustaBotoes;
  pgEstado.ActivePageIndex:=0;
  grdEstado.SetFocus;
end;

procedure TfrmEstado.SpeedButtonDeleteClick(Sender: TObject);
begin
  if not qryEstado.IsEmpty then begin
    if MessageDlg('Confirma a exclus�o ?',mtConfirmation,[mbYes,mbNo],0) = mrYes then begin
      try
        Comando:= 'DELETE FROM CADUF WHERE IDUF = ''' +qryEstado.FieldByName('IDUF').AsString+'''';
        qryAux.Close;
        qryAux.SQL.Text:=Comando;
        qryAux.ExecSQL;

      finally
        qryEstado.Close;
        qryEstado.Open();
        Opr:='';
        AjustaBotoes;
        pgEstado.ActivePageIndex:=0;
      end;
    end;
  end;
end;

procedure TfrmEstado.SpeedButtonEditClick(Sender: TObject);
begin
  if not qryEstado.IsEmpty then begin
    Opr:='E';
    AjustaBotoes;
    if pgEstado.ActivePageIndex = 0 then begin
      LimpaTela;
      AtribuiValores;
    end;
    pgEstado.ActivePageIndex:=1;
    edEstado.SetFocus;
  end;
end;

procedure TfrmEstado.SpeedButtonInsertClick(Sender: TObject);
begin
  pgEstado.ActivePageIndex := 1;
  LimpaTela;
  Opr:='I';
  AjustaBotoes;
  edEstado.SetFocus;
end;

procedure TfrmEstado.SpeedButtonPostClick(Sender: TObject);
var strCodigo:string;
begin
  if Length(Trim(edEstado.Text)) = 0 then begin
    MessageDlg('Estado n�o informado',mtInformation,[mbOK],0);
    exit;
  end;
  if Length(Trim(edSigla.Text)) = 0 then begin
    MessageDlg('Sigla n�o informada',mtInformation,[mbOK],0);
    exit;
  end;

  if Opr = 'I' then begin begin
    qryAux.Close;
    qryAux.SQL.Text:='SELECT COUNT(*)+1 QTD FROM CADUF';
    qryAux.Open;
    strCodigo:=qryAux.FieldByName('QTD').AsString;
    Comando:='INSERT INTO CADUF (IDUF, nmestado, sgestado) VALUES ('''+strCodigo+''','''+edEstado.Text+''','''+edSigla.Text+''')';
  end;
  end
  else begin
    Comando:=' UPDATE CADUF SET '+
             ' nmestado = '''+edEstado.Text+''', '+
             ' sgestado = '''+edSigla.Text+''' '+
             ' WHERE IDUF = '''+qryEstado.FieldByName('IDUF').AsString+'''';
  end;
  qryAux.Close;
  qryAux.SQL.Text:=Comando;
  qryAux.ExecSQL;
  qryEstado.Close;
  qryEstado.Open();
  pgEstado.ActivePageIndex:=0;
  grdEstado.SetFocus;
  Opr:='';
  AjustaBotoes;
end;

procedure TfrmEstado.AjustaBotoes;
begin
  if (Opr = 'I') then begin
    SpeedButtonInsert.Enabled:=False;
    SpeedButtonDelete.Enabled:=False;
    SpeedButtonEdit.Enabled:=False;
    SpeedButtonPost.Enabled:=True;
    SpeedButtonCancel.Enabled:=True;
    pnManutencao.Enabled:=True;
  end
  else if Opr = 'E' then begin
    SpeedButtonInsert.Enabled:=False;
    SpeedButtonDelete.Enabled:=False;
    SpeedButtonEdit.Enabled:=False;
    SpeedButtonPost.Enabled:=True;
    SpeedButtonCancel.Enabled:=True;
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
    SpeedButtonDelete.Enabled:=not qryEstado.IsEmpty;
    SpeedButtonEdit.Enabled:=not qryEstado.IsEmpty;
    SpeedButtonPost.Enabled:=False;
    SpeedButtonCancel.Enabled:=False;
    pnManutencao.Enabled:=True;
  end;
end;

procedure TfrmEstado.AtribuiValores;
begin
  edEstado.Text:=qryEstado.FieldByName('nmestado').AsString;
  edSigla.Text:=qryEstado.FieldByName('sgestado').AsString;
end;

procedure TfrmEstado.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    Keybd_event(VK_TAB, 0, 0, 0);
end;

procedure TfrmEstado.FormShow(Sender: TObject);
begin
  qryEstado.Close;
  qryEstado.Open;
  pgEstado.ActivePageIndex:=0;
  grdEstado.SetFocus;
  Opr:='';
  AjustaBotoes;
end;

procedure TfrmEstado.grdEstadoDblClick(Sender: TObject);
begin
  if not qryEstado.IsEmpty then begin
    Opr:='C';
    AjustaBotoes;
    pgEstado.ActivePageIndex:=1;
    LimpaTela;
    AtribuiValores;
  end;
end;

end.
