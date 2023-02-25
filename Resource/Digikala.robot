***Settings***
Documentation  A suite test for show digikala user's profile
Library  SeleniumLibrary
Resource  variables.robot

***Variables***
${Profile}  xpath://html/body/div[1]/div[1]/div[1]/header/div[2]/div/div/div[2]/div[1]/div[1]
${EnterButton}  xpath://html/body/div[1]/main/div[2]/div[2]/form/button/div[2]
${Enter}  //*[contains(text(), "ورود | ثبت‌نام")]
${SubmitButton}  //*[contains(text(), "تایید")]
${UsernameBox}  name:username
${PasswordBox}  name:password

***Keywords***
Open Page
  Set Selenium Speed  ${SPEED}
  Set Selenium Timeout  ${TIMEOUT}
  Open Browser  ${URL}  ${BROWSER} 
  Maximize Browser Window

Enter Information
  Wait Until Element Is Visible  ${ENTER} 
  Click Element  ${ENTER} 
  Wait Until Page Contains  لطفا شماره موبایل یا ایمیل خود را وارد کنید
  Input Text  ${USERNAME BOX}  ${Username}
  Click Element  ${ENTER BUTTON}
  Wait Until Page Contains  رمز عبور را وارد کنید
  Input Text  ${PASSWORD BOX}  ${PASSWORD}
  Click Element  ${SUBMIT BUTTON}

Show Profile
  Wait Until Element Is Visible  ${PROFILE}
  Click Element  ${PROFILE}
  Page Should Contain  خروج از حساب کاربری