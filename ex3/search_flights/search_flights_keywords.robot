*** Settings ***
Library         SearchFlightPage.py     Firefox    #Chrome


*** Keywords ***
Open search page
    Open

Open Home Page
    Open
    
Close pages
    Close
    
Close Browsers
    Close
    
Select departure
    [Arguments]  ${city}

    select departure city  ${city}

select destination
    [Arguments]  ${city}
    select destination city  ${city}

Search Flights
    search for flights
    @{flights}=     Get Found Flights
    set test variable  ${flights}

Flights are found
    Should Not Be Empty     ${flights}
