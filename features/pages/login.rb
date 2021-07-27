class Login < SitePrism::Page
  set_url '/'
  element :input_email, '#email' #selecionando o elemento que recebe o email para login

  def login(email, password)
    input_email.send_keys(email) #preenchendo o elemento de email com o email
    fill_in 'Password', with: password #preenchendo o campo senha com a senha
    click_button 'Sign in'
  end

  def return_home
    click_on('Return to Home') #retornando ao /index para que os produtos possam ser selecionados
  end
end
