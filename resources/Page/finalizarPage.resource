*** Settings ***
Resource    ../../Base.resource

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
    Take Screenshot     ${file_path}evidenciaCT012.png

salvo informações
    Click Element               ${BTN_SALVAR_CANDIDATO}
    
sistema retorna para Gestão de Clientes
    Wait Until Element Is Visible    ${CG_VALIDAR}  