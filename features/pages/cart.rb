class Cart < SitePrism::Page
 set_url '/'
 element :cart_title, '#cart_title'
 element :cart_button, '#header > div:nth-child(3) > div > div > div:nth-child(3) > div > a'
 def clicar_no_carrinho
    cart_button.click
 end
 def capturar_texto_carrinho
  cart_title.text
 end
end