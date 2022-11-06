*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${browser}      chrome
${url}      https://www.amazon.com/
${elektronik}      //span[@class='hm-icon-label']
${bilgisayar/laptop}        //a[@data-menu-id='6']
${dizustubilgisayar}     //a[text()='Computers & Tablets']
${apple}      (//span[text()='Apple'])[1]
${laptop}      //span[text()='Laptops']
${4 gb}      //span[text()='4 GB']
${ilk urun}      //span[@class='a-size-base-plus a-color-base a-text-normal']
${uruntitle}     //span[@id='productTitle']
${actualtitle}      Apple MacBook Air with Intel Core i5, 1.6GHz, (13-inch, 4GB,128GB SSD) - Silver (Renewed)

*** Keywords ***
 starting setup
    Open Browser    ${url}     ${browser}
    Maximize Browser Window

 4 gb apple mac laptop
    Click Element    ${elektronik}
    Sleep    1
    Click Element   ${bilgisayar/laptop}
   Click Element    ${dizustubilgisayar}
   Sleep    1
   Click Element    ${laptop}
   Click Element    ${apple}
   Sleep    1
   Scroll Element Into View     //span[text()='4 GB']
   Click Element    ${4 gb}
   Sleep    1
   Click Element    ${ilk urun}
   Element Text Should Be    ${uruntitle}    ${actualtitle}


tear down setup
    Sleep    4
    Close Browser