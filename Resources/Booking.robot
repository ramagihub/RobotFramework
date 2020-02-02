*** Settings ***
Documentation    Suite description
Library  SeleniumLibrary
*** Variables ***
${appointment_btn} =  id:btn-make-appointment
${login} =  id:btn-login
${uname_edit} =  id:txt-username
${passwd_edit} =  id:txt-password
*** Keywords ***
Make appointment
    Click Element  ${appointment_btn}
    Sleep  2
User Login to Application
    [Arguments]  ${uname}  ${passwd}
    Input Text   ${uname_edit}  ${uname}
    Input Text   ${passwd_edit}  ${passwd}
    Click Element  ${login}
    Capture Page Screenshot
Enter the infomation in Booking page
    [Arguments]  ${facility}  ${date}  ${comments}
    Select From List By Label  id:combo_facility  ${facility}
    Input Text  id:txt_visit_date  ${date}
    Input Text  id:txt_comment  ${comments}
    Capture Page Screenshot
    Click Element  id:btn-book-appointment
    Capture Page Screenshot
Verify the Booking Confirmation page
    Element Text Should Be  xpath://*[@id='summary']/div/div/div/h2  Appointment Confirmation
Home page Navigation
    Click Element  xpath://a[text()='Go to Homepage']
    Capture Page Screenshot
Verify the Home page
    Element Text Should Be  id:btn-make-appointment  Make Appointment