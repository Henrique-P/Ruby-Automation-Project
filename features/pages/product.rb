class Product < SitePrism::Page
  element :add_button, '#add_to_cart'
  element :first_checkout, '#layer_cart > div.clearfix > div.layer_cart_cart.col-xs-12.col-md-6 > div.button-container > a'
  element :second_checkout, '#center_column > p.cart_navigation.clearfix > a.button.btn.btn-default.standard-checkout.button-medium'

  def add_to_cart
    add_button.click
  end
  def go_to_cart
    first_checkout.click
  end
  def checkout
    second_checkout.click
  end
end