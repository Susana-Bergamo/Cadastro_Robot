*** Settings ***
Documentation   Desafio Robot Framework Prime Control- Ações e elementos da homepage 
Resource    ../../Base.resource

*** Variables ***
${HOME_BTN_CONTA}                xpath=//a[contains(@class,'btn btn-dark btn-lg btn-banner')]
${HOME_EMAIL_CADASTRADO}         ana1a.bsi@outlook.com
${HOME_SENHA_CADASTRO}           123456
${HOME_INPUT_EMAIL}              id=floatingInput
${HOME_INPUT_PASSWORD}           id=floatingPassword
${HOME_BTN_CRIARCONTA}           xpath=//button[@type='button']
${HOME_LOGIN}                    xpath=//h1[contains(.,'Login')]
${HOME_ALERT_JACADASTRADO}       xpath=//div[contains(@role,'alert')]
${file_path}                    ./screenshots/


*** Keywords ***
clico no botao criar conta
    Wait Until Element Is Visible    ${HOME_BTN_CONTA}
    Click Element                    ${HOME_BTN_CONTA}
efetuo cadastro dados válidos
    Wait Until Page Contains         Criar Conta
    Input Text                       ${HOME_INPUT_EMAIL}       ${HOME_EMAIL_CADASTRADO}
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