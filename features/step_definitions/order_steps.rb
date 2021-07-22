E('prossigo até o final do processo')do
  @app.order.address
  @app.order.shipping
  @app.order.payment
end

Então('devo ver {string} na pagina final')do |expected_message|
  expect(@app.order.verify).to eql expected_message
end