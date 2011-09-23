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

  Scenario: Make a Move
    Given I create a new game with dimension "3"
    And I follow "1"
    Then I should see "Human 1"

  Scenario: Undo Last Move


