*** Settings ***
Library     SeleniumLibrary
Resource    ../POMResources/SLLoginKeywords.robot

*** Variables ***
${Browser}      chrome
${SiteUel}      https://www.saucedemo.com/
${user}     standard_user
${pwd}      secret_sauce


*** Test Cases ***
LoginTest
    Open Browser    ${SiteUel}      ${Browser}
    Enter UserName Password    ${user}    ${pwd}
    Verify Success Login
