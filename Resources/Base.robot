*** Settings ***
Documentation    Base Test

Library    Browser
Library    Collections
Library    ./Factories/Users.py

Resource    Helpers.robot
Resource    Database.robot

Resource    Actions/AuthActions.robot
Resource    Actions/SignupActions.robot
Resource    Actions/_SharedActions.robot


*** Variables ***
${URL_BASE}    https://getgeeks-antonio.herokuapp.com


*** Keywords ***
Start Session
    New Browser    chromium       headless=False    slowMo=00:00:00.5
    New Page       ${URL_BASE}

Finish Session
    Take Screenshot