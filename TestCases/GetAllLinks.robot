*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
GetAllLinksTest
    Open Browser        https://demo.guru99.com/test/newtours/      chrome
    Maximize Browser Window
    ${AllLinksCount}    Get Element Count    xpath://a
    Log To Console    ${AllLinksCount}

    @{LinkItems}    Create List
    FOR   ${i}    IN  RANGE   1   ${AllLinksCount}
        ${i}
    END



