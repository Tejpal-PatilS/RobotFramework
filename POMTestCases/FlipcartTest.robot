*** Settings ***
Library     SeleniumLibrary
Resource    ../POMResources/FlipcartKeywords.robot

*** Variables ***
${Browser}      chrome
${SiteUel}      https://www.flipkart.com/?affid=affveve&affExtParam1=c25f21fb1137bbc689239b0ef4d131fc&affExtParam2=60827
#${user}     tutorial
#${pwd}      tutorial


*** Test Cases ***
LoginTest
    Open Browser    ${SiteUel}      ${Browser}
    Maximize Browser Window
    ${enter_user_id}    Set Variable    XPATH://*[@class='_2IX_2- VJZDxU']
    Element Should Be Enabled    ${enter_user_id}
    Element Should Be Visible    ${enter_user_id}
    Input Text    ${enter_user_id}    7774812377
 
 SelectMobiles
    Input Text    XPATH://*[@title='Search for products, brands and more]     Redmi note 12
    Click Button    XPATH://button[@class='L0Z3Pu']
    ${Rating}       Get Text    XPATH://*[text()='REDMI Note 12 (Ice Blue, 64 GB)']/..//span[contains(text(),'Ratings')]
    Log To Console    ${Rating}

