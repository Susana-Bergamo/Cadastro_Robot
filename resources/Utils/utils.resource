*** Settings ***
Resource    ../../Base.resource

*** Keywords ***
Take Screenshot
    [Arguments]    ${file_name}
    Capture Page Screenshot    ${file_name}