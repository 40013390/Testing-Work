*** Settings ***
Library    AppiumLibrary    

*** Test Cases ***
TC1_Verify_Invalid_Login
    Open Application    http://localhost:4723/wd/hub    
    ...    platformName=android
    ...    deviceName=realme
    ...    appPackage=com.ltts.myts
    ...    appActivity=android.support.customtabs.trusted.LauncherActivity
    ...    chromedriverExecutable=${OUTPUT_DIR}${/}driver${/}chromedriver.exe
    Sleep   30s
   
    ${contexts}    Get Contexts
    Log To Console    ${contexts}
    
    Switch To Context    ${contexts}[1]    
    
    ${con}    Get Current Context
    Log To Console    ${con}    
    
    Sleep    3s
    
    Execute Script    document.getElementById('txtUsername').value ='usha neeli';  
    #Input Text    //input[@placeholder='PS Number']   admin@lts.com
    #Execute Script    document.getElementById('txtPassword').value ='123'; 
    Input Text    //*[@placeholder='Outlook Password']    pass