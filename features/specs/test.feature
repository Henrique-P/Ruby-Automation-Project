#language: pt

@test
Funcionalidade: Adicionar produto ao carrinho
    
  Cenario: Sucesso ao abrir o produto
    Dado que estou na pagina home
    Quando clico no primeiro produto
    Então devo ver "Add to cart" na área do produto

  # Cenario: Sucesso ao adicionar o produto ao carrinho
  #  Dado que estou na pagina do produto
  #  Quando clico em Add to cart na área do produto
  #  Então devo ver "SHOPPING-CART SUMMARY" no carrinho
   