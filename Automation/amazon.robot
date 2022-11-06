*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/setup.resource
Resource    test.robot



Test Setup   starting setup
Test Teardown   tear down setup

*** Variables ***


*** Test Cases ***
test1
      4 gb apple mac laptop
