*** Settings ***
Documentation    Auth actions


*** Keywords ***
Go To Login Page
    Go To    ${URL_BASE}
    Wait For Elements State    css=.submit-button >> text=Entrar    visible    15

    Wait For Elements State    css=.login-form    visible    15

Fill Credentials
    [Arguments]    ${user}

    Fill Text    id=email       ${user}[email]
    Fill Text    id=password    ${user}[password]

Submit Credentials
    Click    css=.submit-button >> text=Entrar

User Should Be Logged In
    [Arguments]    ${user}

    ${profile}         Set Variable    css=a[href='/profile']
    ${profile_text}    Get Text        ${profile} 

    ${expected_fullname}    Set Variable    ${user}[name] ${user}[lastname]

    Wait For Elements State    ${profile} >> text=${expected_fullname}    visible    15

    Log    \nProfile: ${profile_text}
    Log    Expected Fullname: ${expected_fullname}

    Should Be Equal    ${profile_text}    ${expected_fullname}

Field Should Be Type Email
    Get Property    css=input[type=email]    type    equal     email

Alert Text Should Be
    [Arguments]    ${expected_alert}

    ${content}    Set Variable    css=span[class=error] >> text=${expected_alert}

    Wait For Elements State    ${content}    visible    15

    Get Text    ${content}    Should Be    ${expected_alert}