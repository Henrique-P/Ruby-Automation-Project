class Home < SitePrism::Page
  set_url '/'
  element :product_button,
          '#homefeatured > li.ajax_block_product.col-xs-12.col-sm-4.col-md-3.first-in-line.first-item-of-tablet-line.first-item-of-mobile-line > div > div.right-block > h5 > a'
  element :add_button, '#add_to_cart'
  element :checkout, '#layer_cart > div.clearfix > div.layer_cart_cart.col-xs-12.col-md-6 > div.button-container > a'

  def clicar_no_produto
    product_button.click
  end

  def verificar_botao
    add_button.text
  end
  def clicar_em_comprar
    add_button.click
    checkout.click
  end
end
