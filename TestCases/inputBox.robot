*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}      https://www.nopcommerce.com

*** Test Cases ***
TestingInputBox
    Open Browser    ${url}      ${browser}
    Maximize Browser Window
  #  Title Should Be    nopCommerce
    Click Link    xpath://*[text()='Log in']
    ${"email_txt"}  Set Variable  id:Email
    Element Should Be Visible    ${"email_txt"}
    Element Should Be Enabled    ${"email_txt"}

    Input Text    ${"email_txt"}    tejapalpatil5257@gmail.com
    Sleep    5
    Clear Element Text    ${"email_txt"}
    Sleep    3
    Close Browser
*** Keywords ***
