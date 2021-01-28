*** Settings ***
Library    AppiumLibrary

*** Test Cases ***
TC1_validCredential
    Open Application      http://localhost:4723/wd/hub
    ...    platformName=android
    ...    deviceName=realme
    ...    browserName=chrome
    ...    chromedriverExecutable=${OUTPUT_DIR}${/}chromedriver.exe
    Go To Url    url=https://magento.com/
    #Set Appium Timeout    30s
    Click Element    //*[contains(@class,'nav-menu-button js-menu-button visible-xs visible-sm')]
    Wait Until Element Is Visible    //*[text()='Continue']    timeout=30s
    Click Element    //*[text()='My Account']
    Wait Until Page Contains Element    //*[@id='email']  
    Input Text    //*[@id='email']    balaji0017@gmail.com
    Input Password    //*[@id='pass']    welcome@12345
    

    Click Element    //*[text()='Continue']    #//*[@id='send2']
      
    
    Click Element    //*[contains(text(),'Log Out')]     #wait Untill Page Contains    Log Out #Page should Contains Text    Log Out
    Close Application
    
           