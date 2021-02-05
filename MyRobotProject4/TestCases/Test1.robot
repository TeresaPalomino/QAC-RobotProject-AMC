*** Settings ***
Library    SeleniumLibrary      


*** Test Cases ***
tc_001 login Test
    open browser    https://opensource-demo.orangehrmlive.com/    gc
    Maximize Browser Window 
    
    Set Selenium Speed    3s    #temps d"arret apres chaque instruction
    
    Input Text    xpath=//input[@id="txtUsername"]    Admin
    Input Text    xpath=//input[@id="txtPassword"]    admin123
    Click Button    //input[@id="btnLogin"]
        

tc_002 login Test
    open browser    https://opensource-demo.orangehrmlive.com/    gc
    Maximize Browser Window 
    
    Set Selenium Speed    1s    #temps d"arret apres chaque instruction
    
    Input Text    xpath=//input[@id="txtUsername"]    Admin
    Input Text    xpath=//input[@id="txtPassword"]    admin123
    Click Button    //input[@id="btnLogin"]
    Click Link    xpath=//a[@id="welcome"]  
    Click Link    link=Logout    
    
tc_003 login Test
    open browser    https://opensource-demo.orangehrmlive.com/    gc
    Maximize Browser Window 
        
    ${timeout} =    get Selenium Timeout
    Log To Console  ${timeout}  
    
    Set Selenium Timeout    20s 
    
    ${timeout} =    get Selenium Timeout      
    Log To Console    ${timeout}    
    
    Input Text    xpath=//input[@id="txtUsername"]    Admin
    Input Text    xpath=//input[@id="txtPassword"]    admin123
    Click Button    //input[@id="btnLogin"]
    Wait Until Page Contains    Dashboard      
    

loginTest4
    open browser    https://opensource-demo.orangehrmlive.com/    gc
    Maximize Browser Window 
    
    #Set Selenium Speed    3s    #temps d"arret apres chaque instruction
    
    Input Text    xpath=//input[@id="txtUsername"]    Admin
    Input Text    xpath=//input[@id="txtPassword"]    admin123
    
    Set Selenium Implicit Wait    20s
    Click Button    //input[@id="btnLogin1"]
 


  