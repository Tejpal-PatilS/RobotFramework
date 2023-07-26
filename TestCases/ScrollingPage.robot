*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
ScrollingTest
    Open Browser    https://www.countries-ofthe-world.com/flags-of-the-world.html      chrome
    Execute Javascript      window.scrollTo(0, 1500)

    Scroll Element Into View    xpath://*[text()='India']
    Execute Javascript      window.scrollTo(0,document.body.scrollHeight)
    Sleep    4
    Execute Javascript      window.scrollTo(0,-document.body.scrollHeight)


