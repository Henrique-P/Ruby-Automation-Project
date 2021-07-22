Então('devo ver {string} no carrinho') do |expect_message|
    expect(@app.product.capturar_texto_carrinho).to include expect_message
  end