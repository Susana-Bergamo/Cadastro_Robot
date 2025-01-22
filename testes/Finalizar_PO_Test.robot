Language: Brazilian Portuguese
*** Settings ***

Documentation     

Resource    ../Base.resource
Resource    ../resources/Page/Login.resource
Resource    ../resources/Page/Finalizar.resource
Resource    ../resources/Page/Home.resource
Resource    ../resources/Page/GerenciarCliente.resource
Resource    ../resources/Page/Finalizar.resource
Resource    ../testes/GerenciarCliente_PO_Test.robot
Resource    ../testes/Login_PO_Test.robot
Resource    ../testes/Home_PO_Test.robot


*** Test Cases ***

CT010 — Realizar Logout com sucesso ao clicar em “Finalizar”
    Dado que esteja logada
    E clico na opção Finalizar
    Quando modal for exibido com mensagem “Para submeter os dados do projeto, clique em 'Enviar'. Se desejar sair, clique em 'Logout'.”
    E clico na opção 'Logout'
    Então sou redirecionado para página de login

CT012 — Validar preenchimento “Informações do Candidato” ao clicar em “Finalizar e Enviar”
    Dado que esteja em Gestão de Clientes 
    E clico na opção Finalizar
    Quando modal for exibido com mensagem “Para submeter os dados do projeto, clique em 'Enviar'. Se desejar sair, clique em 'Logout'.”
    E clico na opção Enviar
    E modal Informações do Candidato é exibido
    E preencho informações
    E salvo informações
    Então sistema retorna para Gestão de Clientes



