*** Settings ***
Documentation    Base test

Library    RequestsLibrary
Library    Factories/Users.py

Resource    Routes/SessionsRoute.robot
Resource    Routes/UsersRoute.robot


*** Variables ***
${BASE_URL}    https://getgeeks-user-antonio.herokuapp.com