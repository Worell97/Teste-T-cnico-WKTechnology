program TesteDelphi;

uses
  Vcl.Forms,
  PedidosVenda in '..\PedidosVenda.pas' {Form1},
  DAO_Pedidos in 'data\pedidos\DAO_Pedidos.pas',
  DAO_Pedido_produtos in 'data\pedidos\DAO_Pedido_produtos.pas',
  DTO_Pedidos in 'data\pedidos\DTO_Pedidos.pas',
  DTO_Pedido_produtos in 'data\pedidos\DTO_Pedido_produtos.pas',
  DAO_Clientes in 'data\clientes\DAO_Clientes.pas',
  DTO_Clientes in 'data\clientes\DTO_Clientes.pas',
  DAO_Produtos in 'data\produtos\DAO_Produtos.pas',
  DTO_Produtos in 'data\produtos\DTO_Produtos.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
