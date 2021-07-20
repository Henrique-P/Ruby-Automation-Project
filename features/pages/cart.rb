class Cart < SitePrism::Page
 set_url '/'
 element :alert, '#center_column > div.page-heading'
 def cart
 click_button "Cart"
 end
 def message
  alert.text
 end
end