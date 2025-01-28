*** Settings ***
Resource    ../../Base.resource

*** Keywords ***
que esteja na home page
    Open App

clico no botao criar conta
    Wait Until Element Is Visible    ${HOME_BTN_CONTA}
    Click Element                    ${HOME_BTN_CONTA}
efetuo cadastro dados válidos
    Wait Until Page Contains         Criar Conta
    Input Text                       ${HOME_INPUT_EMAIL}       ${HOME_EMAIL_CADASTRAR}
    Input Text                       ${HOME_INPUT_PASSWORD}    ${HOME_SENHA_CADASTRO}
    Click Button                     ${HOME_BTN_CRIARCONTA} 
sou redirecionado para efetuar login
    Wait Until Element Is Visible    ${HOME_LOGIN}          timeout=10s
    Take Screenshot                ${file_path}evidenciaCT001.png

insiro email já cadastrado
    Input Text                       ${HOME_INPUT_EMAIL}       ${HOME_EMAIL_CADASTRADO}
    Input Text                       ${HOME_INPUT_PASSWORD}    ${HOME_SENHA_CADASTRO}
    Click Button                     ${HOME_BTN_CRIARCONTA} 

sistema retorna mensagem “Esse email já está em uso por outra conta”
    Wait Until Element Is Visible    ${HOME_ALERT_JACADASTRADO}          timeout=5s
    Take Screenshot                ${file_path}evidenciaCT002.png