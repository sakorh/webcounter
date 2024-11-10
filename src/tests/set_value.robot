*** Settings ***
Resource  resource.robot
Suite Setup  Open And Configure Browser
Suite Teardown  Close Browser

*** Test Cases ***
When a value has been set the counter has correct value
   Go To  ${HOME_URL}
   Page Should Contain  nappia painettu 0 kertaa
   Input Text  value  10
   Click Button  aseta
   Page Should Contain  nappia painettu 10 kertaa
