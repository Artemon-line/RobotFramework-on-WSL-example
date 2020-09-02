*** Settings ***
Documentation     Example of resource
Library           SeleniumLibrary

*** Variables ***
${HOST}           localhost:5001
${LOGIN_URL}      http://${HOST}/login
${WELCOME_URL}    http://${HOST}/welcome
${BROWSER}        Chrome

*** Keywords ***
Open Login Page
    Open Browser       ${LOGIN_URL}    ${BROWSER}
    Title Should Be    Login page      message="Wrong title"

Input Name
    [Arguments]    ${name}
    Input Text     username    ${name}

Input Password
    [Arguments]    ${password}
    Input Text     password       ${password}
