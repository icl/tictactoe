@javascript
Feature: TTT Game
  As a researcher
  I would like to play tic tac toe games
  So I can study people's abilities

  Background:
    Given a standard set of experimental conditions exist
    Given there are no games
    Given I log in
    And a subject exists
    And I visit the first subject's page

  Scenario: Start a new game
    When I select "3" from "Dimension"
    And I select "Normal" from "Condition"
    And I press "Start Game"
    Then I should be redirected to a new game
    And I should see "Normal"

  Scenario: Start a new training game
    When I select "3" from "Dimension"
    And I select "Training" from "Condition"

  Scenario: Computer moves first
    When I check "Comp moves first"
    And I press "Start Game"
    Then I should be redirected to a new game
    And the game should have a move
  Scenario: Quit game in progress
    Given a game exists
    And I visit the first game
    And I follow "End Game"
    Then I should be redirected to a subject page
