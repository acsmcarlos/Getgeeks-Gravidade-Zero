*** Settings ***
Documentation    Shared actions


*** Keywords ***
Modal Content Should Be
    [Arguments]    ${expected_message}    

    ${title}      Set Variable    css=.swal2-title
    ${content}    Set Variable    css=.swal2-html-container

    Wait for Elements State    ${title}    visible    5
    Get Text                   ${title}    equal      Oops...

    Wait for Elements State    ${content}    visible    5
    Get Text                   ${content}    equal      ${expected_message}

Get Required Alerts
    [Arguments]    ${index}

    ${span}     Get Text    xpath=(//form//span)[${index}]
    
    [Return]    ${span}