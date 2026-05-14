*** Settings ***
Library    Browser
Test Teardown    Run Keyword If Test Failed    Take Screenshot

*** Test Cases ***
Sheffield Mental Health UI Test (With Failure)
    New Browser    chromium    headless=False

    New Context
    ...    recordVideo={'dir': 'output/videos/'}
    ...    tracing={'screenshots': True, 'snapshots': True}

    New Page    https://www.sheffieldmentalhealth.co.uk/

    # Wait for page load
    Wait For Elements State    text=Explore Services    visible    timeout=10s

    # Validate homepage title (should pass)
    Get Title    contains    Sheffield

    # Navigate to Services
    Click    text=Services

    # Wait for search section
    Wait For Elements State    text=Search    visible

    # Perform search
    Fill Text    input[type="search"]    anxiety
    Press Keys    input[type="search"]    Enter

    # Validate results appear
    Wait For Elements State    text=Services Found    visible

    # ❌ Intentional failure (wrong expectation)
    Get Title    ==    This Will Definitely Fail

    Close Context
    Close Browser