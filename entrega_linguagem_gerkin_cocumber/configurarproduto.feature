#language: pt

Funcionalidade: Configurar produto

Como cliente da EBAC-SHOP 
Quero configurar meu produto de acordo com meu tamanho e gosto 
E escolher a quantidade 
Para depois inserir no carrinho 

Cenário: Adicionar produtos cor, tamanho e quantidade
Dado que eu acesse a loja ebac para adicionar um produto ao carrinho
Quando eu for adicionar o produto ao carrinho devo selecionar a cor, tamanho e quantidade
Então deve exibir a mensagem "para adicionar um produto selecione a cor, tamanho e quantidade" e bloquear

Cenário: Adicionar produtos máximo 10 produtos
Dado que eu acesse a loja ebac para adicionar produtos ao carrinho
Quando eu for adicionar o produto ao carrinho devo selecionar a quantidade de produtos
Então deve exibir a mensagem "é permitido no máximo 10 produtos por compra" e bloquear

Cenário: Limpar produtos do carrinho
Dado que eu acesse a loja ebac e adicione produtos ao carrinho
Quando eu for limpar o carrinho e retirar os produtos
E clicar no botão "limpar"
Então todos os produtos do carrinho devem ser removidos