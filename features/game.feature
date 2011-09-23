@javascript
Feature: TTT Game
  As a researcher
  I would like to play tic tac toe games
  So I can study people's abilities

  Background:
    Given a standard set of experimental conditions exist
    Given I log in
    And a subject exists
    And I visit the first subject's page
    And I follow "New Game"

  Scenario: Start a new game
    When I select "3" from "Dimension"
    And I select "Normal" from "Condition"
    And I press "Start Game"
    Then I should be redirected to a new game
    And I should see "Normal"

  Scenario: Make a Move
    Given a game exists
    And I visit the first game
    And I follow "1"
    Then I should see "human 1"

  Scenario: Undo Last Move


