class Order < SitePrism::Page
  element :address_button, '#center_column > form > p > button'
  element :shipping_button, '#form > p > button'
  element :checkbox, '#uniform-cgv'
  element :bankwire, '#HOOK_PAYMENT > div:nth-child(1) > div > p > a'   
  element :confirm_order, '#cart_navigation > button'
  element :alert, '#center_column > div > p'

  def address
    address_button.click
  end
  def shipping
    checkbox.click
    shipping_button.click
  end
  def payment 
    bankwire.click
    confirm_order.click
  end
  def verificate
    alert.text
  end
end