#language: pt


Funcionalidade: Testar funcionalidades do site sem o login

@test3
  Cenario: Fazer um pedido com dois items.
    Dado que estou na pagina home
    Quando adiciono um produto ao carrinho
    E o removo do carrinho
    Então devo ver 'SHOPPING-CART SUMMARY' no carrinho