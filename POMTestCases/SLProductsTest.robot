*** Settings ***
Library     SeleniumLibrary
Resource    ../POMResources/SLProductsKeywords.robot

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

*** Test Cases ***
ProductTest
    Products Add & verify cart

*** Test Cases ***
Product Added To Cart
    Products Added in Cart



