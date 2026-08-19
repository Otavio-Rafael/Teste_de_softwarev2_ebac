#language: pt

Funcionalidade: Configurar produto

Como cliente da EBAC-SHOP 
Quero configurar meu produto de acordo com meu tamanho e gosto 
E escolher a quantidade 
Para depois inserir no carrinho 

Cenário: Adicionar produtos ao carrinho
Dado que eu acesse a loja ebac para adicionar um produto ao carrinho
Quando eu cor, tamanho e quantidade e clicar em "adicionar ao carrinho"
Então deve exibir a mensagem "produto adionado com sucesso"

Cenário: Validar seleção de produtos
Dado que eu acesse a loja ebac para adicionar um produto ao carrinho
Quando eu deixar de selecionar cor, tamanho e quantidade e clicar em "adicionar ao carrinho"
Então deve exibir a mensagem "Para adicionar um produto selecione a cor, tamanho e quantidade" e bloquear a ação

Cenário: Adicionar produtos 10 produtos
Dado que eu acesse a loja ebac para adicionar produtos ao carrinho
Quando eu adicionar até 10 produto aos carrinhos
Então deve permitir adicionar os produtos ao carrinho

Cenário: Adicionar mais de produtos 10 produtos
Dado que eu acesse a loja ebac para adicionar produtos ao carrinho
Quando eu adicionar 10 produto ou mais aos carrinhos
Então não deve permitir adicionar os produtos ao carrinho

Cenário: Limpar produtos do carrinho
Dado que eu acesse a loja ebac e adicione produtos ao carrinho
Quando eu for limpar o carrinho e retirar os produtos
E clicar no botão "limpar"
Então todos os produtos do carrinho devem ser removidos