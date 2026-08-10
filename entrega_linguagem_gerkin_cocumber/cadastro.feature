# language: pt
Funcionalidade: Tela de cadastro checkout
Como cliente da EBAC-SHOP 
Quero fazer concluir meu cadastro    
Para finalizar minha compra 

  Cenário: Realizar cadastro checkout
    Dado que eu acesse a tela de cadastro no checkout
    Quando eu for digitar os dados, campos obrigatórios devem estar marcados com "*"
    E após inserir todos os dados corretamente
    Então deve ser concluido o cadastro e permitido que finalize a compra

  Cenário: Campos vazios
    Dado que eu acesse a tela de autenticação do portal EBAC
    Quando eu tentar finalizar o cadastro
    E estiver com os campos obrigatórios vazios
    Então deve exibir a mensagem de alerta “campos obrigatórios vazios”

  Esquema do Cenario: Formato de e-mail inválido
    Dado que eu acesse a tela de cadastro no checkout
    Quando eu for digitar o <usuário> no formato inválido
    E a <senha>
    Então deve exibir a <mensagem> de erro

    Exemplos:
      | usuario                | senha       | mensagem                     |
      | "otavio@maiolmail.com" | "12345"     | "Formato de e-mail inválido" |
      | "otavio@meoalmail.com" | "12345"     | "Formato de e-mail inválido" |
      | "otavio@emailivre.com" | "12345"     | "Formato de e-mail inválido" |
      | "otavio@maiolmail.com" | "errada111" | "Formato de e-mail inválido" |
      | "otavio@maiolmail.com" | "falhou111" | "Formato de e-mail inválido" |
