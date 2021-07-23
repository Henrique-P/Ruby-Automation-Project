class Product < SitePrism::Page
  element :product_button,
          '#homefeatured > li.ajax_block_product.col-xs-12.col-sm-4.col-md-3.first-in-line.first-item-of-tablet-line.first-item-of-mobile-line > div > div.right-block > h5 > a'
  element :product_button2, '#homefeatured > li:nth-child(2) > div > div.right-block > h5 > a'

  def click_on_product_1
    product_button.click
  end

  def click_on_product_2
    product_button2.click
  end

  def add_to_cart
    click_button('Add to cart')
  end

  def checkout
    click_on('Proceed to checkout')
  end

  def more_products
    find('.continue').click
    click_on('Return to Home')
  end

  def verify
    find('#cart_title').text
  end

  def delet_product
    first('.cart_quantity_delete').click
  end
end
