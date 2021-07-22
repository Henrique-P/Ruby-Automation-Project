class Product < SitePrism::Page
  element :cart_title, '#cart_title'
  element :add_button, '#add_to_cart'
  element :checkout, '#layer_cart > div.clearfix > div.layer_cart_cart.col-xs-12.col-md-6 > div.button-container > a'

  def add_to_cart
    add_button.click
    checkout.click
  end

  def capturar_texto_carrinho
    cart_title.text
  end
end