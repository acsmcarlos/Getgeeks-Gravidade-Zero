*** Settings ***
Documentation    Users route


*** Keywords ***
POST User
    [Arguments]    ${payload}

    ${response}    POST
    ...            ${BASE_URL}/users
    ...            json=${payload}
    ...            expected_status=any
    
    [Return]       ${response}