*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
MyTestCases
    Open Browser    https://www.nopcommerce.com     chrome
    Maximize Browser Window

    Open Browser    https://www.facebook.com    chrome
    Maximize Browser Window

#    Close Browser
    Close All Browsers