*** Settings ***
Library  SeleniumLibrary
Variables  ../PageObjects/Locators.py

*** Keywords ***
Open my Browser
    [Arguments]  ${URL}  ${Browser}
    open browser  ${URL}  ${Browser}
    maximize browser window

Enter UserName
    [Arguments]  ${username}
    Input Text  ${txt_loginUserName}  ${username}

Enter Passwprd
    [Arguments]  ${password}
    Input Text  ${txt_loginPassword}  ${password}

Click SignIn
    click button  ${btn_signIn}

Verify successful login
    title should be  Find a Flight: Mercury Tours:

Close my browser
    close all browsers


