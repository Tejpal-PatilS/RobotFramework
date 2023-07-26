*** Settings ***
Library     SeleniumLibrary
Variables   ../POMPageObjects/Locators.py

*** Keywords ***
Open my Browser
    [Arguments]     ${SiteUrl}      ${Browser}
    Open Browser    ${SiteUrl}      ${Browser}
    Maximize Browser Window

#close Browser
#    Close BrowserSS