*** Settings ***
Library    AppiumLibrary    
Library    Process    
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
    #Close Application
    Sleep    3s
    Input Text    //*[@content-desc='Enter an e-mail address or username']    usha@gmail.com
    Input Password   //*[@content-desc='Password']   123
    Click Element    xpath=(//*[@text='Sign in'])[2]
    Sleep    3s
    
    
    
    ${text}    Get Text    //*[contains(@text,'Invalid')]    
    Log To Console    ${text}    
    
    Wait Until Page Contains    Invalid password  
    Page Should Contain Text    Invalid password
    
    Element Text Should Be    //*[contains(@text,'Invalid')]    Invalid password    
    

TC2_InValidationCredential
    
    Open Application    http://localhost:4723/wd/hub
    ...    deviceName=Redmi
    ...    platformName=Android
    ...    app=${OUTPUT_DIR}${/}app${/}Khan Academy_v6.2.1_apkpure.com.apk
    Set Appium Timeout    30
    Click Element    //*[@text='Profile'] 
    Wait Until Page Contains Element        //*[contains(@text,'Sign up with email')]
    Click Element    //*[contains(@text,'Sign up with email')] 
    Wait Until Page Contains Element         //*[contains(@text,'First')]   
    Input Text    //*[contains(@text,'First')]    ami
    Click Element    //*[contains(@text,'Birth')]
    
    
    sleep    2s
    ${date}    Set Variable    28
    FOR    ${i}    IN RANGE    0    999
        Click Element    //*[@resourse-id='android:id/numberpicker_input']
        Clear Text    //*[@resourse-id='android:id/numberpicker_input']
        Input Text    //*[@resourse-id='android:id/numberpicker_input']    27
        
        ${text}    Get Text       //*[@resourse-id='android:id/numberpicker_input'] 
        Exit For Loop If     '${text}'=='27' 
    END
    Click Element    xpath=(//*[@resourse-id='android:id/numberpicker_input'])[2]
    sleep    2s
    Clear Text    xpath=(//*[@resourse-id='android:id/numberpicker_input'])[2]
    Input Text    xpath=(//*[@resourse-id='android:id/numberpicker_input'])[2]    Aug
    Click Element    xpath=(//*[@resourse-id='android:id/numberpicker_input'])[3]
    Sleep    2s    
    Click Text    xpath=(//*[@resourse-id='android:id/numberpicker_input'])[3]    
    Input Text    xpath=(//*[@resourse-id='android:id/numberpicker_input'])[3]    1992
    Click Element    //*[@text='OK']
    


TC3_Verify_ArtAndHumanities
     
    Open Application    http://localhost:4723/wd/hub
    ...    deviceName=Redmi
    ...    platformName=Android
    ...    app=${OUTPUT_DIR}${/}app${/}Khan Academy_v6.2.1_apkpure.com.apk
     Set Appium Timeout    30s
     Sleep     5s
    #${output}    Run Keyword And Ignore Error    Click Element    //*[contains(@text,"Arts")]    
     FOR    ${i}    IN RANGE    0    999
        ${output}    Run Keyword And Ignore Error    Click Element    //*[contains(@text,"Arts")]  
        Swipe By Percent    50    75    50    25    
        Exit For Loop If    '${OUTPUT}[0]'=='PASS'
     END
     Tap    //*    433    1686    5
     #${keyboardcheck}    Is Keyboard Shown
     #Run Keyword If    ${keyboardcheck}==True    Hide Keyboard    
     
TC4_StartWithCMD
    Start Process    notepad.exe
    Start Process    appium -p 4723    shell=True    alias=appiumserver 
    ...    stdout=${CURDIR}/appium_stdout.txt    stderr=${CURDIR}/appium_stderr.txt
    
    Process Should Be Running    appium   
    Open Application    http://localhost:4723/wd/hub
    ...    deviceName=Redmi
    ...    platformName=Android
    ...    app=${OUTPUT_DIR}${/}app${/}Khan Academy_v6.2.1_apkpure.com.apk
    
    Set Appium Timeout    30s
    Sleep     5s
    Close All Applications
    Terminate Process