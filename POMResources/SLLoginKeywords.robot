*** Settings ***
Library     SeleniumLibrary
Variables   ../POMPageObjects/Locators.py

*** Keywords ***
Open my Browser
    [Arguments]     ${SiteUrl}      ${Browser}
    Open Browser    ${SiteUrl}      ${Browser}
    Maximize Browser Window

Enter UserName Password
    [Arguments]     ${UserName}     ${Password}
    Input Text    ${txt_loginUserName}    ${UserName}
    Input Text    ${txt_loginPass}    ${Password}
    Click Button    ${click_loginBtn}

Verify Success Login
    Title Should Be    Swag Labs

close Browser
    Close Browser