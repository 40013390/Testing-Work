*** Settings ***
Library    AppiumLibrary    

*** Test Cases ***
TC1_Verify_Invalid_Login
    Open Application    http://localhost:4723/wd/hub    
    ...    platformName=android
    ...    deviceName=realme
    ...    app=${OUTPUT_DIR}${/}app${/}Khan Academy_v6.2.1_apkpure.com.apk    
    Set Appium Timeout    30s
    Click Element    //*[@text='Profile']
    Wait Until Page Contains Element    //*[@text='Sign in']     
    Click Element    //*[@text='Sign in'] 
    Click Element    //*[@text='Sign in with Google']
    


 
    
