unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Phys.IBBase, FireDAC.Comp.UI,
  Data.DB, FireDAC.Comp.Client, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet, Vcl.Menus,
  System.ImageList, Vcl.ImgList, cxImageList, cxGraphics;

type
  TfrmMain = class(TForm)
    FDConnection1: TFDConnection;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    FDPhysFBDriverLink1: TFDPhysFBDriverLink;
    FDQuery1: TFDQuery;
    DataSource1: TDataSource;
    MainMenu1: TMainMenu;
    Cidade1: TMenuItem;
    Cidade2: TMenuItem;
    E1: TMenuItem;
    itular1: TMenuItem;
    Funcionario1: TMenuItem;
    imgBotoes: TcxImageList;
    Cadastros1: TMenuItem;
    procedure Cidade1Click(Sender: TObject);
    procedure Cidade2Click(Sender: TObject);
    procedure E1Click(Sender: TObject);
    procedure itular1Click(Sender: TObject);
    procedure Funcionario1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

uses uEstado, uCidade, uEmpresa, uTitular, uConsulta;

procedure TfrmMain.Cidade1Click(Sender: TObject);
begin
  Application.CreateForm(TfrmEstado, frmEstado);
  frmEstado.ShowModal;
end;

procedure TfrmMain.Cidade2Click(Sender: TObject);
begin
  Application.CreateForm(TfrmCidade, frmCidade);
  frmCidade.ShowModal;
end;

procedure TfrmMain.E1Click(Sender: TObject);
begin
  Application.CreateForm(TfrmEmpresa, frmEmpresa);
  frmEmpresa.ShowModal;
end;

procedure TfrmMain.Funcionario1Click(Sender: TObject);
begin
  Application.CreateForm(TfrmConsulta, frmConsulta);
  frmConsulta.ShowModal;
end;

procedure TfrmMain.itular1Click(Sender: TObject);
begin
  Application.CreateForm(TfrmTitular, frmTitular);
  frmTitular.ShowModal;
end;

end.
