*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
NavigationTests
    Open Browser    https://www.google.com/     chrome
    ${loc}=     Get Location
    Log To Console    ${loc}

    Go To    https://www.bing.com/
    ${loc}=     Get Location
    Log To Console    ${loc}

    Sleep    3
    Go Back
    ${loc}=     Get Location
    Log To Console    ${loc}
    Sleep    3
