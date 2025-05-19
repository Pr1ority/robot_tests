*** Settings ***
Library    SeleniumLibrary
Resource    resources/common.resource

*** Variables ***
${BOOK_NAME}    Coders at Work

*** Test Cases ***
Find Product
    Open Browser    ${BASE_URL}    Chrome
    Input Text    css=[type=search]    ${BOOK_NAME}
    Click Button    css=[method=get] .btn
    Wait Until Element Is Visible    css=[title="Coders at Work"]    timeout=10
    [Teardown]    Close Browser



