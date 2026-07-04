Feature: Login functionality

  Scenario: Successful login
    Given I am on the login page
    When I enter username "testuser" and password "password123"
    And I click login
    Then I should be redirected to the dashboard

  Scenario: Invalid login
    Given I am on the login page
    When I enter username "wronguser" and password "wrongpass"
    And I click login
    Then I should be redirected to the dashboard