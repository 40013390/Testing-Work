*** Settings ***
Library    AppiumLibrary    

*** Test Cases ***
TC1_Verify_Invalid_Login
    Open Application    http://localhost:4723/wd/hub    
    ...    platformName=android
    ...    deviceName=realme
    ...    appPackage=com.ltts.myts
    ...    appActivity=android.support.customtabs.trusted.LauncherActivity
    Set Appium Timeout    30s
    Input Text    //*[@resource-id='txtUsername']    admin