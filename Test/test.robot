*** Settings ***
Library    SeleniumLibrary
Resource    ../Variables/Variables.robot
Resource    ../Keywords/Keywords.robot
*** Test Cases ***
login test
    Open Browser    ${URL} 
    Login 

