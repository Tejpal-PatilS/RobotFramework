*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}      https://www.nopcommerce.com

*** Test Cases ***
RegTest
    Open Browser    ${url}      ${browser}
    Maximize Browser Window
    Select Radio Button    Gender    Male
    Input Text    name:FirstName    Tejpal
    Input Text    name:LastName    Patils
    Input Text    name:Email    tejpalpatil5257@gmail.com
    Input Text    name:password    Tejpal@30
    Input Text    name:ConfirmPassword    Tejpal@30


    Close Browser
*** Keywords ***