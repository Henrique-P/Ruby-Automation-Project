Dado('que estou na pagina home') do
  @app.home.load
end

Quando('adiciono um produto ao carrinho') do
  @app.home.clicar_no_produto
  @app.product.add_to_cart
end
