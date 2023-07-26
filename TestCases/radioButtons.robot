*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}      https://www.nopcommerce.com

*** Test Cases ***
TestingInputBox
    Open Browser    ${url}      ${browser}
    Maximize Browser Window

    # Selecting Radio buttons
    Select Radio Button    sex    male
    Select Radio Button    exp    5

    # Selecting Checkboxes
    Select Checkbox    BlackTea
    Select Checkbox    RedTea

    Unselect Checkbox    BlackTea
    Close Browser
*** Keywords ***