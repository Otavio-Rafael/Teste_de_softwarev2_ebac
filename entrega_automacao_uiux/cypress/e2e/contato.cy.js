describe('Funcionalidade: Contato', () => {

    beforeEach(() => {
         cy.visit('index.html')
    });

    it('Deve prencher o formulário de contato com sucesso', () => {
        cy.get('[name="name"]').type('Otávio Soares')
        cy.get('[name="email"]').type('otavio@teste.com')
        cy.get('[name="subject"]').select('Parcerias')
        cy.get('[name="message"]').type('Testando automação')
        cy.get('#btn-submit').click()
        cy.contains('Contato enviado com sucesso').should('exist')
    })

    it('Deve validar mensagem de erro ao enviar sem preencher nome', () => {
        cy.get('[name="name"]').clear()
        cy.get('[name="email"]').type('otavio@teste.com')
        cy.get('[name="subject"]').select('Parcerias')
        cy.get('[name="message"]').type('Testando automação')
        cy.get('#btn-submit').click()
        cy.get('#alert-container').should('contain', 'Por favor, preencha o campo Nome')
    })

    it('Deve validar mensagem de erro enviar sem preencher email', () => {
        cy.get('[name="name"]').type('Otávio')
        cy.get('[name="email"]').clear()
        cy.get('[name="subject"]').select('Parcerias')
        cy.get('[name="message"]').type('Testando automação')
        cy.get('#btn-submit').click()
        cy.get('#alert-container').should('contain', 'Por favor, preencha o campo E-mail')
    })

    it('Deve validar mensagem de erro enviar sem preencher assunto', () => {
        cy.get('[name="name"]').type('Otávio')
        cy.get('[name="email"]').type('teste@teste.com')
        cy.get('[name="message"]').type('Testando automação')
        cy.get('#btn-submit').click()
        cy.get('#alert-container').should('contain', 'Por favor, selecione o Assunto')
    })

    it('Deve validar mensagem de erro enviar sem preencher mensagem', () => {
        cy.get('[name="name"]').type('Otávio')
        cy.get('[name="email"]').type('teste@teste.com')
        cy.get('[name="subject"]').select('Parcerias')
        cy.get('[name="message"]').clear()
        cy.get('#btn-submit').click()
        cy.get('#alert-container').should('contain', 'Por favor, escreva sua Mensagem')
    })    

});