*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${url}      https://www.google.com
${browser}      chrome
${search1}      amazon
${search2}      turktelekom


*** Test Cases ***
InputBox
    open browser    ${url}  ${browser}
    maximize browser window

    input text  xpath://input[@title='Ara']     ${search1}
    click button        xpath:(//input[@name='btnK'])[2]
    clear element text  //input[@aria-label='Ara']
    input text  //input[@aria-label='Ara']   ${search2}
    click button    //button[@aria-label='Ara']



*** Keywords ***
