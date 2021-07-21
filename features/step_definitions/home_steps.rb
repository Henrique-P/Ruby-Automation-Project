Dado('que estou na pagina home') do
  @app.home.load
end

Quando('adiciono um produto ao carrinho e prossigo para checkout') do
  @app.home.clicar_no_produto
  @app.home.clicar_em_comprar
end

Então('devo ver {string} no carrinho') do |expect_message|
  expect(@app.product.capturar_texto_carrinho).to include expect_message
end
