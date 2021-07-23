E('prossigo até o final do processo') do
  @app.product.checkout
  @app.product.checkout
  @app.order.shipping
  @app.order.payment
end

Então('devo ver {string} na pagina final') do |expected_message|
  expect(find('#center_column > div > p').text).to eql expected_message
end
