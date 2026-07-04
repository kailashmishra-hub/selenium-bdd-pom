Feature: Login functionality

  @login_successfull
  Scenario: Successful login
    Given I am on the login page
    When I enter username "testuser" and password "password123"
    And I click login
    When I search for "Laptop"
    Then I should be redirected to the dashboard

  @login_failed
  Scenario: Invalid login
    Given I am on the login page
    When I enter username "wronguser" and password "wrongpass"
    And I click login
    Then I should be redirected to the dashboard