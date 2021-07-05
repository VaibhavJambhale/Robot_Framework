*** Settings ***
Library    SeleniumLibrary    

*** Test Cases ***
LoginGetSetUp
    Open Browser    ${URL}    chrome
    Set Browser Implicit Wait    5
    Maximize Browser Window
    Click Element    xpath://*[@id="PopupSignupForm_0"]/div[2]/div[1]   
    Click Button    xpath://*[@id="__layout"]/div/section[1]/nav[1]/div[2]/div[2]/div/div/button     
    Click Element    xpath://*[@id="__layout"]/div/section/div/div/section/div[1]/section/div/section/span/div/span 
    Input Text    xpath:(//*[@placeholder='Enter your email address'])[1]    ${email}
    Click Button    xpath:(//*[@type='submit'])[1]  
    Input Text    xpath://*[@placeholder='Password']    ${password}
    Click Button    xpath:(//*[@type='submit'])[1] 
    ${name} =   Get Text    class:username   
    Log    Login Successful. Username is ${name}.
         
MyHome
    Sleep    5     
    ${active_Days_Count} =  Get Text      xpath://*[@id="__layout"]/div/section[3]/div[1]/div/div[2]/div/div[1]/div/div[2]/h2
    ${classes_taken_count} =  Get Text    xpath://*[@id="__layout"]/div/section[3]/div[1]/div/div[2]/div/div[2]/div/div[2]/h2  
    ${wellness_minute_count} =  Get Text  xpath://*[@id="__layout"]/div/section[3]/div[1]/div/div[2]/div/div[3]/div/div[2]/h2
    Log    Active Days: ${active_Days_Count}, Classes taken:${classes_taken_count}, Wellness minute: ${wellness_minute_count} 
    # ${is_class_registered} =  Get Text    xpath://*[@id="__layout"]/div/section[3]/section/div/div/div/div[1]/div
    Click Element     xpath://*[@id="__layout"]/div/section[3]/section/div/div/div/div[2]/a 
    Wait Until Element Is Visible    xpath://*[@id="__layout"]/div/section[3]/div[1]/div[1]/div/div[1]/h1  
    Input Text    xpath://*[@placeholder='Search Guides and Classes']    Book 
    Press Keys    xpath://*[@placeholder='Search Guides and Classes']    ENTER
    
    
LogOut
    Sleep    5    
    Click Element    xpath://*[@id="__layout"]/div/section[1]/nav[1]/div[2]/div[2]/div/div/div/div[1]/div    
    Click Element    xpath://*[@id="__layout"]/div/section[1]/nav[1]/div[2]/div[2]/div/div/div/div[3]/div/a[3]    
    ${signUp_Text} =  Get Text    xpath://*[@id="__layout"]/div/section[1]/nav[1]/div[2]/div[2]/div/div/button/span 
    Log    Log Out Successful.      
    




*** Variables ***
${URL}        https://www.getsetup.io
${email}        pritesh@getsetup.io
${password}    gT9#zU8(iU4>uX7?   
    