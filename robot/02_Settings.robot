# http://serhatbolsu.github.io/robotframework-appiumlibrary/AppiumLibrary.html

*** Settings ***
Library         AppiumLibrary  run_on_failure=Suite Failure
Library         OperatingSystem
Suite Setup     Suite Setup
Suite Teardown  Suite Teardown
Test Timeout    2 minutes

*** Variables ***
${SSDIR}       ${OUTPUT DIR}/Screenshots
${APPIUM}      http://appium:4723/wd/hub
${PACKAGE}     com.android.settings
${ACTIVITY}    com.android.settings.Settings
${DEVICENAME}  H3X7N17527001397
${SHOT_NUM}    0

*** Keywords ***
Suite Setup
    [Documentation]  Prepare environment
    Register Keyword To Run On Failure  Suite Failure
    Set Appium Timeout  15 seconds
    Close All Applications
    Open Application
    ...  ${APPIUM}
    ...  platformName=Android
    ...  appPackage=${PACKAGE}
    ...  appActivity=${ACTIVITY}
    ...  deviceName=${DEVICENAME}

Suite Teardown
    Close All Applications

Suite Failure
    Log Source
    Screenshot

Screenshot
    Create Directory  ${OUTPUT DIR}${/}Screenshots
    Capture Page Screenshot  ${OUTPUT DIR}${/}Screenshots${/}${SUITE NAME}_${PREV TEST NAME}.png

*** Test Cases ***
01 Load APP
    Wait Until Page Contains  Wi-Fi  10
    Screenshot

02 Log Source
    Log Source
