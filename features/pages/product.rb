class Product < SitePrism::Page
  # element :add_button, '#add_to_cart'
  # element :first_checkout, '#layer_cart > div.clearfix > div.layer_cart_cart.col-xs-12.col-md-6 > div.button-container > a'
  # element :second_checkout, '#center_column > p.cart_navigation.clearfix > a.button.btn.btn-default.standard-checkout.button-medium'
  element :cart_title, '#cart_title'
  #element :continue_buying, '#layer_cart > div.clearfix > div.layer_cart_cart.col-xs-12.col-md-6 > div.button-container > span'
  #element :home_from_product_page, '#columns > div.breadcrumb.clearfix > a.home'
  element :product_button,'#homefeatured > li.ajax_block_product.col-xs-12.col-sm-4.col-md-3.first-in-line.first-item-of-tablet-line.first-item-of-mobile-line > div > div.right-block > h5 > a'
  element :product_button2, '#homefeatured > li:nth-child(2) > div > div.right-block > h5 > a'
  
  def clicar_no_produto
    product_button.click
    #click_link('Faded Short Sleeve T-shirts')

  end
  
  def clicar_no_produto2
    product_button2.click
  end
  
  def add_to_cart
    #add_button.click
    click_button('Add to cart')
  end
  
  def go_to_cart
    #first_checkout.click
    click_on('Proceed to checkout')
  end
  
  def checkout
    #second_checkout.click
    click_on('Proceed to checkout')
  end
  
  def more_products
    #continue_buying.click
    click_on('Continue shopping')
    #home_from_product_page.click
    click_on('Return to Home')
  end
  def verify
    cart_title.text
  end
end