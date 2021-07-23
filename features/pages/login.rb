class Login < SitePrism::Page
  set_url '/'
  element :input_email, '#email'
  element :message, '#center_column > h1'

  def login(email, password)
    input_email.send_keys(email)
    fill_in 'Password', with: password
    click_button 'Sign in'
  end

  def return_home
    click_on('Return to Home')
  end
end
