*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${browser}      chrome
${url}      https://hepsiburada.com




*** Keywords ***
 starting setup
    Open Browser    ${url}     ${browser}
    Maximize Browser Window


tear down setup
    Sleep    4
    Close Browser