*** Settings ***
Resource    ../../Base.resource


*** Keywords ***
clico no botão fazer login
    Wait Until Element Is Visible    ${HOME_BTN_LOGIN}          timeout=5s
    Click Element                    ${HOME_BTN_LOGIN} 

insiro dados já cadastrado
    Input Text                       ${HOME_INPUT_EMAIL}       ${HOME_EMAIL_CADASTRADO}
    Input Text                       ${HOME_INPUT_PASSWORD}    ${HOME_SENHA_CADASTRO}
    Click Button                     ${LOGIN_BTN_ACESSAR} 

sou direcionado para Gestão de Clientes
    Wait Until Element Is Visible    ${PAGE_GCLIENTE}            timeout=5s
    Take Screenshot                ${file_path}evidenciaCT003.png

informo email já cadastrado
    Input Text                       ${HOME_INPUT_EMAIL}       ${HOME_EMAIL_CADASTRADO}
   
com senha inválida
    Input Text                       ${HOME_INPUT_PASSWORD}    ${HOME_SENHA_INVALIDA}

clico no botão acessar
    Wait Until Element Is Visible    ${LOGIN_BTN_ACESSAR}
    Click Button                     ${LOGIN_BTN_ACESSAR} 
    
sistema retorna mensagem “E-mail ou senha inválida.”
    Wait Until Element Is Visible    ${LOGIN_MSG_ERROR}              timeout=5s
    Take Screenshot                ${file_path}evidenciaCT004.png

clico na opção Esqueci minha senha
    Wait Until Element Is Visible    ${LOGIN_RESERTSENHA} 
    Click Element                    ${LOGIN_RESERTSENHA} 
sou redirecionado para Recuperar Senha
    Wait Until Element Is Visible   ${PAGE_RESERTSENHA}
   
insiro email para recuperação de senha
    Input Text                       ${LOGIN_INPUT_RESERTSENHA}     ${HOME_EMAIL_CADASTRADO}

clico no botão eniviar
    Click Button                     ${LOGIN_BTN_ENVIORESERT} 
sistema retorna mensagem “Email enviado com sucesso”
    Wait Until Element Is Visible    ${LOGIN_MSG_RESERTSENHA}          timeout=5s
    Take Screenshot                ${file_path}evidenciaCT011.png