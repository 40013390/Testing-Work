*** Settings ***
Library    AppiumLibrary    

*** Test Cases ***
TC1_validCredential
    Open Application    http://localhost:4723/wd/hub    
    ...    platformName=windows
    ...    app=C:\\WINDOWS\\system32\\notepad.exe
    Input Text    //*[@Name='Text Editor']    text through automation
    Click Element    //*[@Name='File']    
    Sleep    2s
    Click Element    //*[contains(@Name,'File')]
    Sleep    2S
    Click Element    //*[contains(@Name,'Save As')]
    Input Text    xpath=(//*[contains(@Name,'File name')])[2]    Automate.txt
    Click Element    //*[contains(@Name,'Save')]
    
  