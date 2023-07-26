*** Settings ***
Library     SeleniumLibrary
Resource    ../POMResources/LoginKeywords.robot

*** Variables ***
${Browser}      chrome
${SiteUel}      https://demo.guru99.com/test/newtours
${user}     tutorial
${pwd}      tutorial


*** Test Cases ***
LoginTest
    Open Browser    ${SiteUel}      ${Browser}
    Enter UserName Password    ${user}    ${pwd}
    Verify Success Login
