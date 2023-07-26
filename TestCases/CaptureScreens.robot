*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
LoginTC
    Open Browser    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login      chrome
    Input Text    name:username    Admin
    Input Text    name:password    admin123
password
    Capture Element Screenshot    xpath://*[@alt='company-branding']      D:/CodingFramewoeks/RobotFramework/verifyScreenshots/Logo.png
    Capture Page Screenshot     D:/CodingFramewoeks/RobotFramework/verifyScreenshots/LoginTC.png



