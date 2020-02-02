*** Settings ***
Documentation    Suite description
Library  SeleniumLibrary
*** Variables ***
${URL} =  https://katalon-demo-cura.herokuapp.com/
${BROWSER} =  Chrome
${PATH}=  C:/Users/ramakrushna.a.sahoo/PycharmProjects/RobotFramework/Driver/chromedriver.exe
*** Keywords ***
Open Application Browser
    Create Webdriver    ${BROWSER}    executable_path=${PATH}
    Go To    ${URL}
    Maximize Browser Window
    Capture Page Screenshot
Close Application Browser
    Close Browser