Dado('que estou na pagina de login') do
  @app.login.load
end

Quando('faço o login com {string} e {string}') do |email, password|
  @app.login.login(email, password)
end

Então('devo ver {string} na área logada') do |expect_name|
  expect(find('#center_column > h1').text).to eql expect_name
  @app.login.return_home
end
