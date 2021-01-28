*** Settings ***
Library    AppiumLibrary

*** Test Cases ***
TC1_validCredential
    Open Application      http://localhost:4723/wd/hub
    ...    platformName=android
    ...    deviceName=realme
    ...    browserName=chrome
    ...    chromedriverExecutable=${OUTPUT_DIR}${/}chromedriver.exe
    Go To Url    url=https://m.jcpenney.com/
    
    ${getcontextval}    Get Contexts
    Log To Console    ${getcontextval}   
    
    Click Element    //*[@id='searchInputId']    
    Input Text    //*[@id='searchInputId']    Acdc mens Crew Neck Short Sleeve Music Graphic T-shirt
    Click Element    //*[@data-automation-id='searchIconBlock']
    Scroll    //*[text()='small']    //*[@alt='Feedback']
    FOR    ${i}    IN RANGE   0    9999
        Execute Script    window.scrollBy(0,500)
        Run Keyword And Ignore Error    Click Element    //*[@id='send2']    
        
        ${count}    Get Matching Xpath Count    //*[text()='Log Out']
        Exit For Loop If    ${count}>1
    END
    Click Element    //*[text()='large']
    Click Element    //*[text()='Add to Cart']
    