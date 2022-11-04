*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/setup.resource
Resource    test.robot

Test Setup   starting setup

*** Keywords ***






*** Variables ***



*** Test Cases ***
test1
      #starting setup
      insidegoogle
      tear down setup