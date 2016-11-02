unit uPessoa;

interface

type
  TPessoa = class
  private
    FCodigo: Integer;
    FNome: string;
    procedure SetCodigo(const Value: Integer);
    procedure SetNome(const Value: string);
  public
    property Codigo: Integer read FCodigo write SetCodigo;
    property Nome: string read FNome write SetNome;
  end;

implementation

{ TPessoa }

procedure TPessoa.SetCodigo(const Value: Integer);
begin
  FCodigo := Value;
end;

procedure TPessoa.SetNome(const Value: string);
begin
  FNome := Value;
end;

end.
