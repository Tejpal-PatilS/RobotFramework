*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}      https://www.nopcommerce.com

*** Test Cases ***
Handling DropDown and Lists
    Open Browser    ${url}      ${browser}
    Maximize Browser Window

    # Selecting DropDown
    Select From List By Label    continents     Australia
    Sleep    3
    Select From List By Index    continents     6
    Sleep    3
    Select From List By Value    continents   value


    Close Browser
*** Keywords ***