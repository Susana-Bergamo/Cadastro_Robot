Language: Brazilian Portuguese
*** Settings ***
Resource    ../Base.resource

*** Test Cases ***
CT003 — Realizar Login com sucesso
    Dado que esteja na home page
    E clico no botão fazer login
    Quando insiro dados já cadastrado
    Então sou direcionado para Gestão de Clientes

CT004 — Validar Login com senha inválida
    Dado que esteja na home page 
    E clico no botão fazer login
    Quando informo email já cadastrado
    Mas com senha inválida
    E clico no botão acessar
    Então sistema retorna mensagem “E-mail ou senha inválida.”

CT011— Recuperar senha de acesso
    Dado que esteja na home page 
    E clico no botão fazer login
    E clico na opção Esqueci minha senha
    Quando sou redirecionado para Recuperar Senha
    E insiro email para recuperação de senha
    E clico no botão eniviar
    Então sistema retorna mensagem “Email enviado com sucesso”
