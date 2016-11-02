unit uJSONUtil;

interface

uses
  System.JSON, System.Generics.Collections, REST.Json;

type
  TJSONUtil = class
    class function ObjetoListaParaJson<T: class>(ALista: TObjectList<T>): TJSONArray;
  end;

implementation

{ TJSONUtil }

class function TJSONUtil.ObjetoListaParaJson<T>(ALista: TObjectList<T>): TJSONArray;
var
  VItem: T;
begin
  Result := TJSONArray.Create;

  for VItem in ALista do
    Result.AddElement(TJson.ObjectToJsonObject(VItem));
end;

end.
