#language: pt


Funcionalidade: Testar a funcionalidade de fazer um pedido
  Contexto: Fazer login
    Dado que estou na pagina de login
    Quando faço o login com 'novoemailteste@gmail.com' e 'teste123'
    Então devo ver "MY ACCOUNT" na área logada

  @test
  Cenario: Fazer um pedido.
    Dado que estou logado e na pagina home
    Quando adiciono um produto ao carrinho
    E prossigo até o final do processo
    Então devo ver 'Your order on My Store is complete.' na pagina final

  @test2
  Cenario: Fazer um pedido com dois items.
    Dado que estou logado e na pagina home
    Quando adiciono dois produtos ao carrinho
    E prossigo até o final do processo
    Então devo ver 'Your order on My Store is complete.' na pagina final