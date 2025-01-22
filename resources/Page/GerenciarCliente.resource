*** Settings ***
Documentation   Desafio Robot Framework Prime Control- Ações e elementos da homepage 

Resource    ../../Base.resource
Resource    ../../resources/Page/Login.resource
Resource    ../../testes/Login_PO_Test.robot



*** Variables ***
${GC_ABA_CADASTRARCLIENTE}                xpath=//a[contains(.,'Cadastrar Cliente')]
${CG_INPUT_NOME}                          xpath=//div[contains(@class, 'col-md-9')]//input[@type='text' and contains(@class, 'form-control')]
${CG_INPUT_TEL}                           xpath=//input[contains(@type,'tel')]
${CG_INPUT_EMAIL}                         xpath=//input[contains(@type,'email')]
${CG_INPUT_CEP}                           xpath=//label[text()='CEP:']/following-sibling::input
${CG_INPUT_NUM}                           xpath=//label[text()='Número da residência:']/following-sibling::input
${CG_INPUT_END}                           xpath=//label[text()='Endereço:']/following-sibling::input
${CG_INPUT_COMP}                          xpath=//label[text()='Complemento:']/following-sibling::input
${CG_SELECT_PAIS}                         xpath=//select[@class='form-control']
${CG_BTN_SALVAR}                          xpath=//button[@type='submit'] 
${UPLOAD_PICTURE}                         xpath=//span[@class='add-image-button']
${CG_ESCOLHERPHOTO}                       xpath=//input[@type='file']
${CG_CAMPO_PESQUISA}                      xpath=//input[@placeholder='Pesquisar por nome']
${CG_BTN_PESQUISA}                        xpath=//button[@type='button']
${CG_RESULTPESQUISA}                      xpath=//th[contains(.,'vvvSqQ0sTjGLyKDHcCOi')]
${CG_EDITAR}                              XPATH=//a[@href='/app/editarcliente/vvvSqQ0sTjGLyKDHcCOi']
${CG_EDIÇÃO}                              xpath=//input[contains(@value,'Prime Control')]
${EDITARCLIENTE}                          xpath=//h1[contains(.,'Editar Cliente')]
${SALVAR_EDIÇÃO}                          xpath=//button[contains(.,'Salvar')]
${CG_VALIDAR}                             xpath=//h1[contains(.,'Gestão de Clientes')]
${CG_NOME}                                xpath=//td[contains(.,'Prime Control')]
${file_path}                              ./screenshots/


*** Keywords ***

que esteja em Gestão de Clientes 
   que esteja na home page
   clico no botão fazer login
   insiro dados já cadastrado
   sou direcionado para Gestão de Clientes

clico na aba Cadastrar Cliente
    Wait Until Element Is Visible    ${GC_ABA_CADASTRARCLIENTE}              timeout=5s
    Click Element                    ${GC_ABA_CADASTRARCLIENTE}     

efetuo cadastro de cliente com dados válidos
    ##Preencher dados
    [Arguments]    ${nome}    ${tel}    ${email}    ${PHOTO}     ${cep}    ${num}    ${end}    ${comp}    ${país}     ${genero}    ${ferramenta}
   

    Input Text          ${CG_INPUT_NOME}           ${nome}
    Input Text          ${CG_INPUT_TEL}            ${tel}
    Input Text          ${CG_INPUT_EMAIL}          ${email}

    ##enviar foto
    Wait Until Element Is Visible       ${UPLOAD_PICTURE}         timeout=10s
    Click Element                       ${UPLOAD_PICTURE}
    Choose File                         ${CG_ESCOLHERPHOTO}       ${PHOTO} 
    
  
    Execute JavaScript                  window.focus()
    Execute JavaScript                  window.scrollBy(0, 500)

    ##Preencher demais dados
    Input Text          ${CG_INPUT_CEP}            ${cep}
    Input Text          ${CG_INPUT_NUM}            ${num}

    Execute JavaScript                  window.scrollBy(0, 500)

    Input Text          ${CG_INPUT_END}            ${end}
    Input Text          ${CG_INPUT_COMP}           ${comp}

    ## Selecionar país
    Execute JavaScript              window.scrollBy(0, 500)
    Wait Until Element Is Visible    ${CG_SELECT_PAIS}              timeout=5s
    Click Element                    ${CG_SELECT_PAIS} 
    Select From List By Label        ${CG_SELECT_PAIS}              ${país}
    Press Key                         ${CG_SELECT_PAIS}             ${país}       

    ##selecionar genero
    ${xpath_genero}=    Set Variable           //label[contains(.,'${genero}')]
    Wait Until Element Is Visible               ${xpath_genero}    timeout=5s
    Scroll Element Into View                    ${xpath_genero}
    Click Element                               ${xpath_genero}      

    ##Selecionar Ferrramentas
    Execute JavaScript              window.scrollBy(0, 200) 
    
    ##Selecionar Ferramenta    
    Sleep                               2s
                                                    
    ${xpath_ferramenta}=    Set Variable        //input[contains(@value,'${ferramenta}')]
    Wait Until Element Is Visible               ${xpath_ferramenta}    timeout=5s
    Scroll Element Into View                    ${xpath_ferramenta}
    Click Element                               ${xpath_ferramenta}     

  
clico em salvar
    Wait Until Element Is Visible    ${CG_BTN_SALVAR}     timeout=5s    
    Click Element                    ${CG_BTN_SALVAR}  

cliente cadastrado e exibido na lista de clientes
    [Arguments]    ${email}
    ${xpath_email}=     Set Variable           //td[contains(.,'${email}')]
    Take Screenshot                ${file_path}evidenciaCT005.png
    
   
clico no campo de pesquisa
    Wait Until Element Is Visible    ${CG_CAMPO_PESQUISA}     timeout=5s    
    Click Element                    ${CG_CAMPO_PESQUISA} 

insiro o nome ou identificador do cliente recém-cadastrado
    [Arguments]    ${nome}
    Input Text              ${CG_CAMPO_PESQUISA}    ${nome} 

clico no botão "Pesquisar"
    Click Element                    ${CG_BTN_PESQUISA}   

um modal é exibido com os dados do cliente pesquisado
    Wait Until Element Is Visible    ${CG_RESULTPESQUISA}     timeout=10s
    Take Screenshot                ${file_path}evidenciaCT006.png

a listagem de clientes está carregada com dados válidos 
    Wait Until Element Is Visible    ${CG_RESULTPESQUISA}     timeout=10s

clico no botão "Editar" correspondente ao cliente desejado na listagem
    Click Button                    ${CG_EDITAR}

sou redirecionado para a página de edição do cliente
    Wait Until Element Is Visible       ${EDITARCLIENTE}         timeout=10s
   
atualizo algum dados necessários do cliente
   Input Text          ${CG_EDIÇÃO}            TEST

clico no botão "Salvar" 
    Wait Until Element Is Visible    ${SALVAR_EDIÇÃO}     timeout=5s    
    Click Element                    ${SALVAR_EDIÇÃO} 

sou redirecionado para a página inicial " Gestão de Clientes” 
    Wait Until Element Is Visible    ${CG_VALIDAR}        timeout=5s 
    Take Screenshot                ${file_path}evidenciaCT007.png 

efetuo cadastro de cliente 
    ##Preencher dados
    [Arguments]    ${nome}    ${tel}     ${PHOTO}     ${cep}    ${num}    ${end}    ${comp}    ${país}     ${genero}    ${ferramenta}
   

    Input Text          ${CG_INPUT_NOME}           ${nome}
    Input Text          ${CG_INPUT_TEL}            ${tel}    

    ##enviar foto
    Wait Until Element Is Visible       ${UPLOAD_PICTURE}         timeout=10s
    Click Element                       ${UPLOAD_PICTURE}
    Choose File                         ${CG_ESCOLHERPHOTO}       ${PHOTO} 
    
  
    Execute JavaScript                  window.focus()
    Execute JavaScript                  window.scrollBy(0, 500)

    ##Preencher demais dados
    Input Text          ${CG_INPUT_CEP}            ${cep}
    Input Text          ${CG_INPUT_NUM}            ${num}

    Execute JavaScript                  window.scrollBy(0, 500)

    Input Text          ${CG_INPUT_END}            ${end}
    Input Text          ${CG_INPUT_COMP}           ${comp}

    ## Selecionar país
    Execute JavaScript              window.scrollBy(0, 500)
    Wait Until Element Is Visible    ${CG_SELECT_PAIS}              timeout=5s
    Click Element                    ${CG_SELECT_PAIS} 
    Select From List By Label        ${CG_SELECT_PAIS}              ${país}
    Press Key                         ${CG_SELECT_PAIS}             ${país}       

    ##selecionar genero
    ${xpath_genero}=    Set Variable           //label[contains(.,'${genero}')]
    Wait Until Element Is Visible               ${xpath_genero}    timeout=5s
    Scroll Element Into View                    ${xpath_genero}
    Click Element                               ${xpath_genero}      

    ##Selecionar Ferrramentas
    Execute JavaScript              window.scrollBy(0, 200) 
    
    ##Selecionar Ferramenta    
    Sleep                               2s
                                                    
    ${xpath_ferramenta}=    Set Variable        //input[contains(@value,'${ferramenta}')]
    Wait Until Element Is Visible               ${xpath_ferramenta}    timeout=5s
    Scroll Element Into View                    ${xpath_ferramenta}
    Click Element                               ${xpath_ferramenta}   

com email em formato inválido
    [Arguments]    ${email} 
     Input Text          ${CG_INPUT_EMAIL}          ${email}

efetuo cadastro com campos de nome em branco    ##Preencher dados
    [Arguments]     ${tel}    ${email}    ${PHOTO}     ${cep}    ${num}    ${end}    ${comp}    ${país}     ${genero}    ${ferramenta}
   
   
    Input Text          ${CG_INPUT_TEL}            ${tel}
    Input Text          ${CG_INPUT_EMAIL}          ${email}

    ##enviar foto
    Wait Until Element Is Visible       ${UPLOAD_PICTURE}         timeout=10s
    Click Element                       ${UPLOAD_PICTURE}
    Choose File                         ${CG_ESCOLHERPHOTO}       ${PHOTO} 
    
  
    Execute JavaScript                  window.focus()
    Execute JavaScript                  window.scrollBy(0, 500)

    ##Preencher demais dados
    Input Text          ${CG_INPUT_CEP}            ${cep}
    Input Text          ${CG_INPUT_NUM}            ${num}

    Execute JavaScript                  window.scrollBy(0, 500)

    Input Text          ${CG_INPUT_END}            ${end}
    Input Text          ${CG_INPUT_COMP}           ${comp}

    ## Selecionar país
    Execute JavaScript              window.scrollBy(0, 500)
    Wait Until Element Is Visible    ${CG_SELECT_PAIS}              timeout=5s
    Click Element                    ${CG_SELECT_PAIS} 
    Select From List By Label        ${CG_SELECT_PAIS}              ${país}
    Press Key                         ${CG_SELECT_PAIS}             ${país}       

    ##selecionar genero
    ${xpath_genero}=    Set Variable           //label[contains(.,'${genero}')]
    Wait Until Element Is Visible               ${xpath_genero}    timeout=5s
    Scroll Element Into View                    ${xpath_genero}
    Click Element                               ${xpath_genero}      

    ##Selecionar Ferrramentas
    Execute JavaScript              window.scrollBy(0, 200) 
    
    ##Selecionar Ferramenta    
    Sleep                               2s
                                                    
    ${xpath_ferramenta}=    Set Variable        //input[contains(@value,'${ferramenta}')]
    Wait Until Element Is Visible               ${xpath_ferramenta}    timeout=5s
    Scroll Element Into View                    ${xpath_ferramenta}
    Click Element                               ${xpath_ferramenta}    

sitema não é habilitado para salvar formulário
    ${disabled} =  Get Element Attribute  ${CG_BTN_SALVAR}  disabled
    Should Be Equal As Strings  ${disabled}  true
    Take Screenshot                ${file_path}evidenciaCT009.png