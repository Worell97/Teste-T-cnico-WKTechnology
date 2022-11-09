unit DTO_Produtos;

interface
uses
  System.Generics.Collections, FireDAC.Comp.Client;
type
  TDtoProduto = class;
  TDtoProdutos = class;
  TDtoProduto = class(TObject)
  private
    { private declarations }
    FCodigo: System.Integer;
    FDescricao: System.String;
    FPrecoVenda: System.Double;
    procedure InternalClear();
    procedure SetCodigo(const ACodigo: System.Integer);
    procedure SetDescricao(const ADescricao: System.String);
    procedure SetPrecoVenda(const APrecoVenda: System.Double);
    function GetCodigo(): System.Integer;
    function GetDescricao(): System.String;
    function GetPrecoVenda(): System.Double;
  public
    constructor Create();
    procedure Clear; inline;
    property codigo: System.Integer read GetCodigo write SetCodigo;
    property Descricao: System.String read GetDescricao write SetDescricao;
    property PrecoVenda: System.Double read GetPrecoVenda write SetPrecoVenda;
  end;
  TDtoProdutos = class(TObjectList<TDtoProduto>)
  end;
implementation
{ TDtoProduto }

procedure TDtoProduto.Clear;
begin
  Self.InternalClear();
end;

constructor TDtoProduto.Create();
begin
  Self.InternalClear();
end;

function TDtoProduto.GetCodigo: System.Integer;
begin
  Result := FCodigo;
end;

function TDtoProduto.GetDescricao: System.String;
begin
  Result := FDescricao;
end;

function TDtoProduto.GetPrecoVenda: System.Double;
begin
  Result := FPrecoVenda;
end;

procedure TDtoProduto.InternalClear;
begin
  FCodigo := 0;
  FDescricao := '';
  FPrecoVenda := 0;
end;

procedure TDtoProduto.SetCodigo(const ACodigo: System.Integer);
begin
  FCodigo := ACodigo;
end;

procedure TDtoProduto.SetDescricao(const ADescricao: System.String);
begin
  FDescricao := ADescricao;
end;

procedure TDtoProduto.SetPrecoVenda(const APrecoVenda: System.Double);
begin
  FPrecoVenda :=APrecoVenda;
end;

end.
