*** Settings ***
Documentation   Desafio Robot Framework Prime Control- Ações e elementos da homepage 

Resource    ../../Base.resource
Resource    ../../resources/Page/Login.resource
Resource    ../../resources/Page/Home.resource
Resource    ../../resources/Page/GerenciarCliente.resource
Resource    ../../resources/Page/Finalizar.resource
Resource    ../../testes/GerenciarCliente_PO_Test.robot
Resource    ../../testes/Login_PO_Test.robot
Resource    ../../testes/Home_PO_Test.robot

*** Variables ***
${FINALIZAR_BTN}                        xpath=(//a[@href='/app/home'])[1]
${BTN_LOGOUT}                           xpath=//button[contains(.,'Logout')]
${MODAL_MSG}                            xpath=//div[@class='modal-finalizar']
${BTN_ENVIAR}                           xpath=//button[contains(.,'Enviar')]
${LOGIN_PAGE}                           xpath=//h1[contains(.,'Login')]
${MODAL_CANDIDATO}                      xpath=//h3[contains(.,'Informações do Candidato')]
${NOME_CANDIDATO}                       Susana
${BTN_NOME}                             xpath=//input[@id='nome']
${TELEFONE_CANDIDATO}                   1198533-8770
${BTN_TELEFO}                           xpath=//input[contains(@id,'telefone')]
${LINK}                                 https://github.com/Susana-Berga
${BTN_LINK}                             xpath=//input[contains(@id,'githubLink')]
${NOME_RECRUITE}                        Kelly
${BTN_RECRITE}                          xpath=//input[contains(@id,'nomeRecrutador')]
${BTN_SALVAR_CANDIDATO}                 xpath=//div[@class='modal-buttons']
${file_path}                            ./screenshots/

*** Keywords ***
que esteja logada
   que esteja na home page
   clico no botão fazer login
   insiro dados já cadastrado
   sou direcionado para Gestão de Clientes
  
clico na opção Finalizar
    Wait Until Element Is Visible       ${FINALIZAR_BTN}            timeout=5s
    Click Element                       ${FINALIZAR_BTN}     

modal for exibido com mensagem “Para submeter os dados do projeto, clique em 'Enviar'. Se desejar sair, clique em 'Logout'.”
           ${texto_modal} =  Get Text  ${MODAL_MSG}
    Should Contain  ${texto_modal}  submeter  case_insensitive=True
    Take Screenshot                ${file_path}evidenciaCT010.png

clico na opção 'Logout'
        Click Element                    ${BTN_LOGOUT}

sou redirecionado para página de login
    Wait Until Element Is Visible    ${LOGIN_PAGE}               timeout=5s

clico na opção Enviar
    Click Element                    ${BTN_ENVIAR} 

modal Informações do Candidato é exibido
    Wait Until Element Is Visible    ${GC_ABA_CADASTRARCLIENTE}  

preencho informações 
    Input Text          ${BTN_NOME}          ${NOME_CANDIDATO}
    Input Text          ${BTN_TELEFO}        ${TELEFONE_CANDIDATO}
    Input Text          ${BTN_LINK}          ${LINK}
    Input Text          ${BTN_RECRITE}       ${NOME_RECRUITE}
    Take Screenshot                ${file_path}evidenciaCT012.png

salvo informações
    Click Element               ${BTN_SALVAR_CANDIDATO}
    
sistema retorna para Gestão de Clientes
    Wait Until Element Is Visible    ${CG_VALIDAR}  
