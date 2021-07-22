Dado('que estou logado e na pagina home') do
  
end

Quando('adiciono um produto ao carrinho e prossigo para checkout') do
  @app.product.clicar_no_produto
  @app.product.add_to_cart
  @app.product.go_to_cart
  expect(@app.product.verify).to include "Your shopping cart contains: 1 Product"
  @app.product.checkout
end

Quando('adiciono dois produtos ao carrinho e prossigo para checkout') do
  @app.product.clicar_no_produto
  @app.product.add_to_cart
  @app.product.more_products
  @app.product.clicar_no_produto2
  @app.product.add_to_cart
  @app.product.go_to_cart
  expect(@app.product.verify).to include "Your shopping cart contains: 2 Products"
  @app.product.checkout
end