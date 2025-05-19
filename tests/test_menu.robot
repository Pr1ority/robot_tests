*** Settings ***
Library    SeleniumLibrary
Resource    resources/common.resource

*** Test Cases ***
Test Menu
    Open Browser    ${BASE_URL}    Chrome
    Click Element    css=[tabindex="-1"]
    Page Should Contain Element    css=.page-header h1
    [Teardown]    Close Browser