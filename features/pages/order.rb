class Order < SitePrism::Page
  element :bankwire, '#HOOK_PAYMENT > div:nth-child(1) > div > p > a' #selecionado o botão para o pagamento via bankwire

  def shipping
    find('#uniform-cgv').click #clicando na caixa de consentimento
    click_on('Proceed to checkout') #procedendo para o proximo passo
  end

  def payment
    bankwire.click #clicando na forma de pagamento bankwire
    click_on('I confirm my order') #finalizando o pedido
  end
end
