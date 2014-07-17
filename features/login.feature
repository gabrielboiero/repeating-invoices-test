Feature: Login

  Scenario: Log in my account with a valid user
    Given I'm in Xero login page
    When I enter valid username and password
    Then I should be in main page for company "Demo Company (NZ)"
