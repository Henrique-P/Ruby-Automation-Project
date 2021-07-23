#language: pt


Funcionalidade: Testar funcionalidades do site sem o login

@test3
Cenario: Adicionar um produto ao carrinho e então o remover
Dado que estou na pagina home
Quando adiciono um produto ao carrinho
E o removo do carrinho
Então devo ver 'SHOPPING-CART SUMMARY' no carrinho

@test4
Cenario: Adicionar dois produtos ao carrinho e então os remover
Dado que estou na pagina home
Quando adiciono dois produtos ao carrinho
E os removo do carrinho
Então devo ver 'SHOPPING-CART SUMMARY' no carrinho