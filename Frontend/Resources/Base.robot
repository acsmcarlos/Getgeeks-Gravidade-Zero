*** Settings ***
Documentation    Base Test

Library    Browser
Library    Collections
Library    Utils.py
Library    ./Factories/Geeks.py
Library    ./Factories/Users.py

Resource    Actions/_SharedActions.robot
Resource    Actions/AuthActions.robot
Resource    Actions/SignupActions.robot
Resource    Actions/GeekActions.robot

Resource    Helpers.robot
Resource    Database.robot


*** Variables ***
${URL_BASE}    https://getgeeks-antonio.herokuapp.com


*** Keywords ***
Start Session
    New Browser    ${BROWSER}     headless=${HEADLESS}    slowMo=00:00:00
    New Page       ${URL_BASE}
    # Set Viewport Size    1360    768

New Start Session
    ${user}    Factory User    be_geek

    New Browser    chromium       headless=False    slowMo=00:00:00
    New Page       ${URL_BASE}
    Do Login       ${user}

    Go To Geek Form

After Test
    ${shot_name}       Screenshot Name
    Take Screenshot    fullPage=True              filename=${shot_name}