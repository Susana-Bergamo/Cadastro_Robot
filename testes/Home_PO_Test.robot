Language: Brazilian Portuguese
*** Settings ***  
Resource    ../Base.resource

*** Test Cases ***
CT001 — Criar uma nova Conta com sucesso
    Dado que esteja na home page 
    E clico no botao criar conta 
    Quando efetuo cadastro dados válidos
    Então sou redirecionado para efetuar login

CT002 — Validar criação de uma conta com Email já cadastrado
    Dado que esteja na home page 
    E clico no botao criar conta 
    Quando insiro email já cadastrado
    Então sistema retorna mensagem “Esse email já está em uso por outra conta”