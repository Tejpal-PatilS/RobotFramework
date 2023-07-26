*** Settings ***
Library     SeleniumLibrary
Library    XML
Variables   ../POMPageObjects/SLLocators.py

*** Keywords ***
Open my Browser
    [Arguments]     ${SiteUrl}      ${Browser}
    Open Browser    ${SiteUrl}      ${Browser}
    Maximize Browser Window

Enter UserName Password
    [Arguments]     ${UserName}     ${Password}
    Input Text    ${txt_loginUserName}    ${UserName}
    Input Text    ${txt_loginPass}    ${Password}
    Click Button    ${click_loginBtn}

Verify Success Login
    Title Should Be    Swag Labs


Products Add & verify cart
    Get Text    ${verify_product_price}
    Log To Console    Get Text
    Click Button    ${click_product_backpack}
    Wait Until Element Is Visible    ${click_cart_link}
    Click Link    ${click_cart_link}
    
Products Added in Cart 
    Get Text    ${verify_added_products}
    Log To Console    Element is added successfully
    Wait Until Element Is Visible    ${click_checkout_btn}
    Click Button    ${click_checkout_btn}   

close Browser
    Close Browser