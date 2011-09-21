@javascript
Feature: TTT Game
  As a researcher
  I would like to play tic tac toe games
  So I can study people's abilities

  Background:
    Given I log in
    And a subject exists
    And I visit the first subject's page
    And I follow "New Game"
    Given a normal exists

  Scenario: Start a new game
    When I fill in "3" for "Dimension"
    And I select "Normal" from "Condition"
    And I press "Start Game"
    Then I should be redirected to a new game
