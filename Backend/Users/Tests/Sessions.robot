*** Settings ***
Documentation    Session route test suite

Resource    ../Resources/Base.robot


*** Variables ***
&{inv_pass}       email=carlos@gmail.com    password=abc456
&{inv_email}      email=carlos.gmail.com    password=abc456
&{email_404}      email=carlos@404.com      password=abc456
&{empty_email}    email=${EMPTY}            password=abc456
&{wo_email}       password=abc456
&{empty_pass}     email=carlos@gmail.com    password=${EMPTY}
&{wo_pass}        email=carlos@gmail.com


*** Test Cases ***
User Session

    ${payload}    Factory User Session     signup
    POST User     ${payload}

    ${payload}    Factory User Session     login

    ${response}    POST Session    ${payload}

    Status Should Be    200           ${response}
    ${size}             Get Length    ${response.json()}[token]

    Should Be Equal As Integers    141    ${size}
    Should Be Equal                10d    ${response.json()}[expires_in]

    Log To Console    \nSize: ${size} 
    Log To Console    Token: ${response.json()}[token]

Should Not Get Token
    [Template]    Attempt POST Session

    ${inv_pass}       401    Unauthorized
    ${inv_email}      400    Incorrect email
    ${email_404}      401    Unauthorized
    ${empty_email}    400    Required email
    ${wo_email}       400    Required email
    ${empty_pass}     400    Required pass
    ${wo_pass}        400    Required pass


*** Keywords ***
Attempt POST Session
    [Arguments]    ${payload}    ${status_code}    ${error_message}

    ${response}    POST Session    ${payload}

    Status Should Be    ${status_code}      ${response}
    Should Be Equal     ${error_message}    ${response.json()}[error]
