E('prossigo para checkout') do
  @app.product.go_to_cart
  @app.product.checkout
end