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
${CG_MODAL_PESQUISA}                      xpath=(//h2[normalize-space()='Dados do Cliente'])[1]
${CG_EDITAR_BTN}                          xpath=//a[contains(@href, '/app/editarcliente/fDQsu0bzufJnyhWzZuMg')]
${CG_EDIÇÃO}                              xpath=(//i[@aria-hidden='true'])[4]
${EDITARCLIENTE}                          xpath=(//input[@id='exampleInputEmail1'])[2]
${SALVAR_EDIÇÃO}                          xpath=//button[contains(.,'Salvar')]
${CG_VALIDAR}                             xpath=//h1[contains(.,'Gestão de Clientes')]
${CG_NOME}                                xpath=//td[contains(.,'Prime Control')]