*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/LoginKeywords.robot

*** Variables ***
${Browser}  chrome
${URL}  http://newtours.demoaut.com/
${user}  mercury
${password}  mercury

*** Test Cases ***
LoginTest
    Open my Browser  ${URL}  ${Browser}
    Enter UserName  ${user}
    Enter Passwprd  ${password}
    Click SignIn
    sleep  3
    Verify successful login
    Close my browser