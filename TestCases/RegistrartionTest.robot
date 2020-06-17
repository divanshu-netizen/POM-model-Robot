*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/RegistrationKeywords.robot

*** Variables ***
${Browser}  chrome
${URL}  http://newtours.demoaut.com/mercuryregister.php


*** Test Cases ***
RegistrationTest
    Open my Browser  ${URL}  ${Browser}
    Click Register Link
    Enter FirstName  Roger
    Enter LastName  Smith
    Enter Phone  1234567890
    Enter Email  rogersmith@gmail.com
    Enter Address1  ORR
    Enter Address2  BTM
    Enter City  Bangalore
    Enter State  Karnataka
    Enter Postal  569088
    Select Country  INDIA
    Enter UserName  roger25
    Enter Password  roger25
    Enter Confirm Password  roger25
    Click Submit
    Verify Successful Registration
    Close Browser
