program Cadastro;

uses
  Vcl.Forms,
  uMain in 'uMain.pas' {frmMain},
  uEstado in 'uEstado.pas' {frmEstado},
  uCidade in 'uCidade.pas' {frmCidade},
  uEmpresa in 'uEmpresa.pas' {frmEmpresa},
  uTitular in 'uTitular.pas' {frmTitular},
  uConsulta in 'uConsulta.pas' {frmConsulta};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
