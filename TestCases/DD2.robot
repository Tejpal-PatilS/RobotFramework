*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/LoginResources.robot
Library      DataDriver      ../TestData/LoginData.xLsx      sheet_name=sheet1

Suite Setup     Open Browser
Suite Teardown      close Browsers