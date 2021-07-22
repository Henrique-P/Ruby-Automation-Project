E('faço o login com {string} e {string}') do |email, password|
   @app.login.login(email, password)  
end