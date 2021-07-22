class Login < SitePrism::Page # Está herdando os métodos de SitePrism::Page
  set_url '/'
  element :input_email, "#email"      # Encontrando o elemento de input de email
  element :input_password, "#passwd"  # Encontrando o elemento de input de password
  element :message, "#center_column > h1"
  # element :return_to_home, '#center_column > ul > li > a'
  
  def login(email, password) # Método que faz login passando as variáveis email e password
    input_email.send_keys(email)  # Escreve no input email o que for passado na váriavel email
    input_password.send_keys(password) # Escreve no input password o que for passado na váriavel password
    click_button "Sign in" # Seleciona o botão com o texto 'Sign in'
  end

  def logged_user
    message.text
  end
  
  def return
    #return_to_home.click
    click_on('Return to Home')
  end
end