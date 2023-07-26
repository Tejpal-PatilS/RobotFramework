*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
Testing Frames
    Open Browser    https://www.selenium.dev/selenium/docs/api/java/index.html?overview-summary.html    chrome
    
    Sleep    4
    Select Frame    packageListFrame
    Click Link    org.openqa.selenium
    Unselect Frame


    Sleep    3
    Select Frame    packageFrame
    Click Link    Action
    Unselect Frame

    Sleep    3
    Select Frame    classFrame
    Click Link    org.openqa.selenium.cli
    Unselect Frame

    Close Browser