Language: Brazilian Portuguese
*** Settings ***

Documentation     

Resource    ../Base.resource
Resource    ../testes/Login_PO_Test.robot
Resource    ../resources/Page/GerenciarCliente.resource


*** Variáveis ***
${PHOTO}        C://Users//Sistemas//Pictures//imagem-de-perfil-teste.jpg        



*** Test Cases ***
CT005 — Realizar Cadastro de Clientes com sucesso na aba Perfil
    Dado que esteja em Gestão de Clientes
    E clico na aba Cadastrar Cliente
    Quando efetuo cadastro de cliente com dados válidos    Test     11999999999    email@email.com     ${PHOTO}     11111-111   2    testando    na     Brasil         Feminino    robot    
    E clico em salvar
    Então cliente cadastrado e exibido na lista de clientes   email@email.com  

CT006 — Validar Pesquisa de Cliente recém cadastrado e exibição dos dados em tela 
    Dado que esteja em Gestão de Clientes 
    E clico no campo de pesquisa
    Quando Insiro o nome ou identificador do cliente recém-cadastrado       Prime Control	 
    E clico no botão "Pesquisar"    
    Então um modal é exibido com os dados do cliente pesquisado

CT007 — Editar Cliente através do botão na listagem de clientes
    Dado que esteja em Gestão de Clientes
    E a listagem de clientes está carregada com dados válidos 
    E clico no botão "Editar" correspondente ao cliente desejado na listagem
    E sou redirecionado para a página de edição do cliente 
    Quando atualizo algum dados necessários do cliente
    E clico no botão "Salvar" 
    Então sou redirecionado para a página inicial " Gestão de Clientes” 

CT008 — Validar Cadastro de Clientes com Email inválido na aba Perfil 
    Dado que esteja em Gestão de Clientes 
    E clico na aba Cadastrar Cliente
    Quando efetuo cadastro de cliente     Test     11999999999    ${PHOTO}     11111-111   2    testando    na     Brasil         Feminino    robot    
    Mas com email em formato inválido     test@a
    E clico em salvar
    Então cliente cadastrado e exibido na lista de clientes  test@a
    
CT009— Validar preenchimento de campos obrigatórios na aba Perfil 
    Dado que esteja em Gestão de Clientes 
    E clico na aba Cadastrar Cliente
    Quando efetuo cadastro com campos de nome em branco    11999999999    email@email.com     ${PHOTO}     11111-111   2    testando    na     Brasil         Feminino    robot
    Então sitema não é habilitado para salvar formulário 
