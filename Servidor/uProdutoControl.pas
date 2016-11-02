unit uProdutoControl;

interface

uses
  System.SysUtils, System.Classes, Datasnap.DSServer, Datasnap.DSAuth, System.JSON;

type
{$METHODINFO ON}
  TProdutoControl = class(TComponent)
  public
    function Produto: TJSONValue;
  end;
{$METHODINFO OFF}

implementation

{ TProdutoControl }

function TProdutoControl.Produto: TJSONValue;
begin
  Result := TJSONString.Create('Produto');
end;

end.
