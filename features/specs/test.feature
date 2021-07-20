#language: pt

@test
Funcionalidade: Carrinho
    
  Cenario: Sucesso ao abrir o carrinho
    Dado que estou na página home
    Quando eu clico em Cart
    Então devo ver "SHOPPING-CART SUMMARY" na área do carrinho