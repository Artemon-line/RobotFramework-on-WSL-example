*** Settings ***
Documentation     Test case example
Resource          ../resources/common.robot
Suite teardown    Close all browsers

*** Test Cases ***
Valid Login
    Open Login Page
    common.Input Name        admin
    common.Input Password    admin