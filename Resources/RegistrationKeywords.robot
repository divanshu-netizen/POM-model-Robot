*** Settings ***
Library  SeleniumLibrary
Variables  ../PageObjects/Locators.py


*** Keywords ***
Open my Browser
    [Arguments]  ${URL}  ${Browser}
    open browser  ${URL}  ${Browser}
    Maximize Browser Window

Click Register Link
    click link  ${link_Reg}

Enter FirstName
    [Arguments]  ${firstName}
    Input Text  ${txt_firstName}  ${firstName}

Enter LastName
    [Arguments]  ${lastName}
    Input Text  ${txt_lastName}  ${lastName}

Enter Phone
    [Arguments]  ${phone}
    Input Text  ${txt_phone}  ${phone}

Enter Email
    [Arguments]  ${email}
    Input Text  ${txt_email}  ${email}

Enter Address1
    [Arguments]  ${address1}
    Input Text  ${txt_address1}  ${address1}

Enter Address2
    [Arguments]  ${address2}
    Input Text  ${txt_address2}  ${address2}

Enter City
    [Arguments]  ${city}
    Input Text  ${txt_city}  ${city}

Enter State
    [Arguments]  ${state}
    Input Text  ${txt_state}  ${state}

Enter Postal
    [Arguments]  ${postal}
    Input Text  ${txt_postalCode}  ${postal}

Select Country
    [Arguments]  ${country}
    select from list by label  ${drp_country}  ${country}

Enter UserName
    [Arguments]  ${username}
    Input Text  ${txt_userName}  ${username}

Enter Password
    [Arguments]  ${password}
    Input Text  ${txt_password}  ${password}

Enter Confirm Password
    [Arguments]  ${comfirmpassword}
    Input Text  ${txt_confirmPassword}  ${comfirmpassword}

Click Submit
    Click Button  ${btn_submit}

Verify Successful Registration
    page should contain  Thank you for registering.

Close Browser
    Close All Browsers


