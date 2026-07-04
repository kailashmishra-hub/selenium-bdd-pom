Feature: Search functionality

  @search_valid
  Scenario: Search for a valid product
    Given I am on the home page
    When I search for "Laptop"
    Then I should see results related to "Laptop"

  @search_invalid
  Scenario: Search for an invalid product
    Given I am on the home page
    When I search for "NonExistingProduct"
    Then I should see a "No results found" message
