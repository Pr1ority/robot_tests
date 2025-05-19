*** Settings ***
Library    SeleniumLibrary
Resource   resources/common.resource

*** Variables ***
${VALID_EMAIL}    alioshenkaia@yandex.ru
${VALID_PASS}    testpassword

*** Test Cases ***
Test Valid Login
    [Tags]    smoke    login
    Open Browser    ${BASE_URL}/accounts/login    Chrome
    Login As User    ${VALID_EMAIL}    ${VALID_PASS}
    Page Should Contain    Рады видеть вас снова
    [Teardown]    Close Browser

Test Invalid Login
    [Tags]    negative    login
    Open Browser    ${BASE_URL}/accounts/login    Chrome
    Login As User   invalid    invalid
    Page Should Contain    Войти
    [Teardown]    Close Browser