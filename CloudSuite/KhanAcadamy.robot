*** Settings ***
Library    AppiumLibrary    

*** Test Cases ***
TC1_Verify_Invalid_Login
    Open Application    http://hub-cloud.browserstack.com/wd/hub
    #Open Application    http://localhost:4723/wd/hub 
    ...    browserstack.user=ushachinmaisaine1
    ...    browserstack.key=KHYTByykUDkpSqAVoDF2
    ...    app=bs://491382eb60e6acf5adbbfa587d743337472fd6f2
    ...    device=Samsung Galaxy S7
    ...    os_version=6.0
    ...    project=First Python project
    ...    build=Python Android
    ...    name=first_test
       
    Set Appium Timeout    30s
    Click Element    //*[@text='Profile']
    Wait Until Page Contains Element    //*[@text='Sign in']     
    Click Element    //*[@text='Sign in']     
    Sleep    3s
    Input Text    //*[@content-desc='Enter an e-mail address or username']    usha
    Input Text    //*[@content-desc='Password']    pass
    Click Element    xpath=(//*[contains(@text,'Sign in')])[2]