*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://www.nopcommerce.com

*** Test Cases ***
LoginTest
    Create Webdriver    ${browser}      executable_path="D:\CodingFramewoeks\RobotFramework\Drivers\chromedriver_win32"
    Open Browser    ${url}
    loginToApplication
    Close Browser

*** Keywords ***
loginToApplication
    Click Link    xpath://*[text()='Log in']
    Input Text    id:Username    tejpalpatil5257@gmail.com
    Input Text    id:Password    Tejpal@30
    Click Link    xpath://*[@type='submit']
