program RestFull;
{$APPTYPE GUI}

uses
  Vcl.Forms,
  Web.WebReq,
  IdHTTPWebBrokerBridge,
  uFrmPrincipal in 'uFrmPrincipal.pas' {frmPrincipal},
  uPessoaControl in 'uPessoaControl.pas',
  uSC in 'uSC.pas' {SC: TDataModule},
  uWM in 'uWM.pas' {WM: TWebModule},
  uPessoa in 'uPessoa.pas',
  uJSONUtil in 'uJSONUtil.pas',
  uProdutoControl in 'uProdutoControl.pas';

{$R *.res}

begin
  if WebRequestHandler <> nil then
    WebRequestHandler.WebModuleClass := WebModuleClass;
  Application.Initialize;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
