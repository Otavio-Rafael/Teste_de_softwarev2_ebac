#language: pt

Funcionalidade: Tela de login

Como cliente da EBAC-SHOP 
Quero fazer o login (autenticação) na plataforma   
Para visualizar meus pedidos 

Cenário: autenticação valida
Dado que eu acesse a tela de autenticação do portal EBAC
Quando eu digitar o usuário "otavio@mail.com.br"
E a senha "entrega"
Então devo ser redirecionado para o checkout

Cenário: autenticação invalida
Dado que eu acesse a tela de autenticação do portal EBAC
Quando eu digitar o usuário "otavio@mail.com.br"
E a senha "entregaerrada"
Então deve exibir a mensagem de alerta “Usuário ou senha inválidos”



