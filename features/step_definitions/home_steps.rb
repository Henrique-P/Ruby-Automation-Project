Dado('que estou na pagina home') do
  @app.home.load
end

Quando('clico no primeiro produto') do
  @app.home.clicar_no_produto
end

Então('devo ver {string} na área do produto') do |expect_message|
  expect(@app.home.verificar_botao).to eql expect_message   # Valida se a mensagem do alert contem com a mensagem esperada
end
