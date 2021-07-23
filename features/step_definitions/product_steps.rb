Dado('que estou logado e na pagina home') do
end

Dado('que estou na pagina home') do
  visit 'http://automationpractice.com/index.php'
end

Quando('adiciono um produto ao carrinho') do
  @app.product.click_on_product_1
  @app.product.add_to_cart
  @app.product.checkout
  expect(@app.product.verify).to include 'Your shopping cart contains: 1 Product'
end

Quando('adiciono dois produtos ao carrinho') do
  @app.product.click_on_product_1
  @app.product.add_to_cart
  @app.product.more_products
  @app.product.click_on_product_2
  @app.product.add_to_cart
  @app.product.checkout
  expect(@app.product.verify).to include 'Your shopping cart contains: 2 Products'
end

E('o removo do carrinho') do
  @app.product.delet_product
end

E('os removo do carrinho') do
  2.times do
    @app.product.delet_product
    page.driver.browser.navigate.refresh
  end
end

Então('devo ver {string} no carrinho') do |expected_message|
  expect(find('#center_column > p').text).to eql expected_message
end
