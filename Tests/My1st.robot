*** Settings ***
Documentation    Regression Testcase
Resource  ../Resources/Common.robot
Resource  ../Resources/Booking.robot
*** Test Cases ***
TC01 Login validation
    Open Application Browser
    Make appointment
    User Login to Application  John Doe  ThisIsNotAPassword
TC02 Booking Appointments Validation
    Enter the infomation in Booking page  Hongkong CURA Healthcare Center  02/02/2020  testingNew comment
    Verify the Booking Confirmation page
TC03 Return Home validation
    Home page Navigation
    Verify the Home page
    Close Application Browser
