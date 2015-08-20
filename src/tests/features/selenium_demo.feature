@browser
Feature: Selenium Webdriver demonstration feature

  Scenario: Home Page Top-Level Navigation Links
    Given I navigate to "http://www.uscis.gov/index.html"
    Then the page title should be "Homepage | USCIS"
    And a link having text "FORMS" should be present
    And a link having text "NEWS" should be present
    And a link having text "CITIZENSHIP" should be present
    And a link having text "GREEN CARD" should be present
    And a link having text "TOOLS" should be present
    And a link having text "LAWS" should be present

  Scenario: Search for N-400 Form
    Given I navigate to "http://www.uscis.gov/forms"
    When I select "Forms" option from the Filter By menu
    And I enter "n400" into the search field
    And I click the "Go" button
    Then the page title should be "Forms | USCIS"
    And a link having text "N-400" should be present

  Scenario: Find the nearest USCIS Field Office
    Given I navigate to "http://www.uscis.gov/about-us/find-uscis-office"
    And I click the link with text "Field Offices"
    And I click the link with text "D"
    And I click the link with text "District of Columbia - Washington District Office"
    Then the page title should be "District of Columbia - Washington District Office | USCIS"
    And I should see text "Field Office Director: Kimberly Zanotti"

