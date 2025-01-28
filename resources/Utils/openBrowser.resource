*** Settings ***
Resource    ../../Base.resource

*** Variables ***
${HOME}                 xpath=//a[contains(.,'Home')]

*** Keywords ***
Open App
    Open Browser    ${URL}        ${BROWSER}
    Maximize Browser Window
    Wait Until Element Is Visible    ${HOME}