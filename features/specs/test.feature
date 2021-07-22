#language: pt

@test
Funcionalidade: Testar a funcionalidade de fazer um pedido
    
  Cenario: Fazer um pedido.
    Dado que estou na pagina home
    Quando adiciono um produto ao carrinho
    E prossigo para checkout
    E faço o login com 'novoemailteste@gmail.com' e 'teste123'
    E prossigo até o final do processo
    Então devo ver 'Your order on My Store is complete.' na pagina final