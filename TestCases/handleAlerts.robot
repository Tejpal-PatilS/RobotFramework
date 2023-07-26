*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
Handling Alerts
    Open Browser    https://testautomationpractice.blogspot.com/    chrome
    Click Element   xpath://*[text()="Click Me"]
    Sleep    4
#    Handle Alert    accept
#    Handle Alert    dismiss
#    Handle Alert    Leave
    Alert Should Be Present     Press a button!