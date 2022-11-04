*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${url}  https://www.google.com
${amazonUrl}  https://www.amazon.com
${browser}  chrome


*** Keywords ***
insidegoogle
    Open Browser    ${url}     ${browser}
    Open Browser  ${amazonUrl}  ${browser}
    Maximize Browser Window



e