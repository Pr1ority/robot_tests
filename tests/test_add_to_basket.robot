*** Settings ***
Library    SeleniumLibrary
Resource    resources/common.resource

*** Test Cases ***
Add Product To Basket
    Open Browser    ${BASE_URL}/catalogue    Chrome
    Click Button    class=btn-primary
    Click Element   css=.btn-group .btn
    Page Should Contain Element    css=.btn.btn-lg 
    Page Should Contain    The shellcoder's handbook


