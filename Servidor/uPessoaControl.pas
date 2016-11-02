unit uPessoaControl;

interface

uses
  System.SysUtils, System.Classes, Datasnap.DSServer, Datasnap.DSAuth, System.JSON, System.Generics.Collections,
  uPessoa, REST.Json, uJSONUtil;

type
{$METHODINFO ON}
  TPessoaControl = class(TComponent)
  public
    function Pessoa: TJSONValue;
  end;
{$METHODINFO OFF}

implementation

{ TPessoaControl }

function TPessoaControl.Pessoa: TJSONValue;
var
  VPessoa: TPessoa;
  VListaPessoa: TObjectList<TPessoa>;
begin
  VListaPessoa := TObjectList<TPessoa>.Create;
  try
    VPessoa := TPessoa.Create;
    VPessoa.Codigo := 1;
    VPessoa.Nome   := 'Jacinto';
    VListaPessoa.Add(VPessoa);

    VPessoa := TPessoa.Create;
    VPessoa.Codigo := 2;
    VPessoa.Nome   := 'Carlos';
    VListaPessoa.Add(VPessoa);

    VPessoa := TPessoa.Create;
    VPessoa.Codigo := 3;
    VPessoa.Nome   := 'Celio';
    VListaPessoa.Add(VPessoa);

    Result := TJSONUtil.ObjetoListaParaJson<TPessoa>(VListaPessoa);
  finally
    FreeAndNil(VListaPessoa);
  end;
end;

end.

