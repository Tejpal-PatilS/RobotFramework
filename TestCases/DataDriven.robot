*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/LoginResources.robot
Suite Setup     Open my Browser
Suite Teardown      close Browsers

*** Test Cases ***
Right user empty pwd     admin@yourstore.com     ${EMPTY}
Right user wrong pass     admin@yourstore.com       xyz
Right user right pass     admin@yourstore.com       admin



*** Keywords ***
Invalid login
    [Arguments]     ${username}     ${password}
    Input username    ${username}
    Input password    ${password}
    click login button
    Error msg should be visible
