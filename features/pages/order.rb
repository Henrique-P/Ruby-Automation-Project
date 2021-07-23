class Order < SitePrism::Page
  element :bankwire, '#HOOK_PAYMENT > div:nth-child(1) > div > p > a'

  def shipping
    find('#uniform-cgv').click
    click_on('Proceed to checkout')
  end

  def payment
    bankwire.click
    click_on('I confirm my order')
  end
end
