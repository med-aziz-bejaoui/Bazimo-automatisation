*** Settings ***
Library    SeleniumLibrary
Library    String
Resource    ../variables/variables.robot
Resource    ../Variables/Variables_2.robot
Resource    Keywords.robot

*** Keywords ***

check_elements_visibility_bloc_surface

    on_check_element_eqality    (${ELEMENT_BLOC_SURFACE})[1]    Totale
    on_check_element_eqality    (${ELEMENT_BLOC_SURFACE})[2]    Privative
    on_check_element_eqality    (${ELEMENT_BLOC_SURFACE})[3]    Commune
    on_check_element_eqality    (${ELEMENT_BLOC_SURFACE})[4]    SUN
    on_check_element_eqality    (${ELEMENT_BLOC_SURFACE})[5]    SUB
    on_check_element_eqality    (${ELEMENT_BLOC_SURFACE})[6]    SDP
    on_check_element_eqality    (${ELEMENT_BLOC_SURFACE})[7]    SHON
    on_check_element_eqality    (${ELEMENT_BLOC_SURFACE})[8]    SHOB
    on_check_element_eqality    (${ELEMENT_BLOC_SURFACE})[9]    Carrez
    


on_check_element_eqality 
    [Arguments]    ${LOCATION}    ${VALUE}
    on check element visibility    ${LOCATION}
    ${REAL_VALUE}=    Get Text    ${LOCATION}
    Should Be Equal    ${REAL_VALUE}    ${VALUE}