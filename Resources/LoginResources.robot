*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${LOGIN URL}    https://admin-demo.nopcommerce.com
${BROWSER}      chrome

*** Keywords ***
Open my Browser
    Open Browser    ${LOGIN URL}    ${BROWSER}
    Maximize Browser Window

close Browsers
    Close All Browsers

Open Login Page
    Go To    ${LOGIN URL}

Input username
    [Arguments]     ${username}
    Input Text    id:Email    ${username}
    
Input password
    [Arguments]     ${password}
    Input Text    id:password    ${password}
    
click login button
    Click Button    xpath://*[@class='button-1 login-button']
    
click logout button
    Click Button    xpath://*[text()='Logout']
    
Error msg should be visible
    Page Should Contain    Login was unsuccessful
    
Dashboard page should be visible
    Page Should Contain    Dashboard
