#language: pt

@test
Funcionalidade: Adicionar produto ao carrinho
    
  Cenario: Sucesso ao abrir o produto
    Dado que estou na pagina home
    Quando adiciono um produto ao carrinho e prossigo para checkout
    Então devo ver "Your shopping cart contains: 1 Product" no carrinho