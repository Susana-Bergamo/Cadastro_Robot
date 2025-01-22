*** Settings ***
Documentation    Desafio BDD

Library    SeleniumLibrary

Resource    resources/Page/Home.resource

*** Variables ***
${BROWSER}              Chrome
${URL}                  https://challenge.primecontrol.com.br/
${HOME}                 xpath=//a[contains(.,'Home')]

*** Keywords ***
que esteja na home page 
    Open Browser    ${URL}        ${BROWSER}
    Maximize Browser Window
    Wait Until Element Is Visible    ${HOME}

Take Screenshot
    [Arguments]    ${file_name}
    Capture Page Screenshot    ${file_name}
