*** Settings ***

Library     AppiumLibrary
Variables        environments/env.yml


*** Variables ***
${PLATAFORMA}           ${APPIUM.PLATAFORMA}

*** Keywords ***
# Open session appium
Open Session
    Set Log Level       TRACE
    IF    "${PLATAFORMA}"=="AND"
            Set Appium Timeout           ${APPIUM.TIMEOUT} 
            Open Application    ${APPIUM.BASE_URL} 
            ...                 platformName=Android
            ...                 automationName=uiautomator2
            ...                 deviceName=${APPIUM.${PLATAFORMA}.DEVICE_NAME}
            ...                 udid=${APPIUM.${PLATAFORMA}.DEVICE}
            ...                 app=${EXECDIR}/${APPIUM.${PLATAFORMA}.APP}      
    END

# Close session appium
Close Session
    Capture Page Screenshot
    Close Application