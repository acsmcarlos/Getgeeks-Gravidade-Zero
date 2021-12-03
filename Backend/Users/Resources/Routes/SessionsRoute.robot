*** Settings ***
Documentation    Sessions route


*** Keywords ***
POST Session
    [Arguments]    ${payload}

    ${response}    POST                    
    ...            ${BASE_URL}/sessions    
    ...            json=${payload}         
    ...            expected_status=any
    
    [Return]       ${response}