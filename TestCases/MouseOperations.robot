*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
MouseActions
    Open Browser    https://swisnl.github.io/jQuery-contextMenu/demo.html       chrome
    Maximize Browser Window

    Open Context Menu    xpath://span[text()='right click me']
    Sleep    3

    Go To    https://testautomationpractice.blogspot.com/
    Maximize Browser Window
    Double Click Element    xpath://*[text()='Copy Text']
    Sleep    3
    
    Go To    http://www.dhtmlgoodies.com/scripts/drag-drop-custom/demo-drag-drop-3.html
    Maximize Browser Window
    Drag And Drop    id:box5    id:box107
    Sleep    5
    Close Browser



