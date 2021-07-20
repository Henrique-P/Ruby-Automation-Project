Dado('que estou na página home') do  # Ele busca por alguma linha no(s) documento(s) .feature que possua o conteúdo dentro dos ''
    @app.cart.load                  # Chama a page login, direciona para a URL selecionada e carrega os elementos da página
  end
  
  Quando("eu clico em Cart") do # Aqui está sendo passado dois parametros string que existe(m) no(s) documento(s) login.feature
    @app.cart.cart   # Chama a page login e executar a função login passsando os parâmetros email e password
  end
                                                                           
  Então("devo ver {string} na área do carrinho") do |expect_message|                 
    expect(@app.cart.message).to include expect_message   # Valida se a mensagem do alert contém com a mensagem esperada
  end