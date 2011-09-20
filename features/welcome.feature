Feature: Welcome Page
  As a researcher
  I want to arrive at a landing page
  So I can start new experiement or review old ones

  Scenario: Start a new Game
    When I go to the root page
    And I follow "New Subject"
    Then I should be on the new subject page


