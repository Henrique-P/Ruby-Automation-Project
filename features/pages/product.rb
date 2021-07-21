class Product < SitePrism::Page
  element :cart_title, '#cart_title'
  element :add_to_cart, '#add_to_cart'
  #element :checkout, 

  def add_to_cart
    add_to_cart.click
    #checkout.click
  end

  def capturar_texto_carrinho
    cart_title.text
  end
end