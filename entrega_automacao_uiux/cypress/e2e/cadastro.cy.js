/// <reference types="cypress"/>
import { faker } from '@faker-js/faker';

describe('Funcionalidade: Cadastro no Hub de leitura', () => {

    beforeEach(() => {
        cy.visit('register.html')
    });

    it('Deve fazer cadastro comsucesso, usando função js', () => {
        let email = `teste${Date.now()}@teste.com`
        cy.get('#name').type('Otávio soares')
        cy.get('#email').type(email)
        cy.get('#phone').type('11946636633')
        cy.get('#password').type('Teste@321')
        cy.get('#confirm-password').type('Teste@321')
        cy.get('#terms-agreement').check()
        cy.get('#register-btn').click()
        //Resultado esperado
        cy.url().should('include', 'dashboard')
    });

    it('Deve fazer cadastro comsucesso, usando faker', () => {
        let nome = faker.person.fullName()
        let email = faker.internet.email()
        cy.get('#name').type(nome)
        cy.get('#email').type(email)
        cy.get('#phone').type('11946636633')
        cy.get('#password').type('Teste@321')
        cy.get('#confirm-password').type('Teste@321')
        cy.get('#terms-agreement').check()
        cy.get('#register-btn').click()
        //Resultado esperado
        cy.url().should('include', 'dashboard')
        cy.get('#user-name').should('contain', nome)
    });


});