*** Variables ***
${HOME_INPUT_EMAIL}              id=floatingInput
${HOME_INPUT_PASSWORD}           id=floatingPassword
${LOGIN_BTN_ACESSAR}             xpath=//button[@type='button']
${PAGE_GCLIENTE}                 xpath=//h1[contains(.,'Gestão de Clientes')]
${LOGIN_MSG_ERROR}               xpath=//div[@class='alert alert-danger mt-2'][contains(.,'E-mail ou senha inválida.')]
${LOGIN_RESERTSENHA}             xpath=//a[contains(.,'Esqueci minha senha')]
${PAGE_RESERTSENHA}              xpath=//h1[contains(.,'Recuperar Senha')]
${LOGIN_INPUT_RESERTSENHA}       id=floatingInput
${LOGIN_BTN_ENVIORESERT}         xpath=//button[contains(.,'Enviar')]
${LOGIN_MSG_RESERTSENHA}         xpath=//div[@class='alert alert-success mt-2']   
${HOME_BTN_LOGIN}                xpath=//a[contains(.,'Fazer Login')]