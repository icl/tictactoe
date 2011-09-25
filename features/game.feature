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

  Scenario Outline: Make a Move
    Given a game exists
    And I visit the first game
    And I follow "<tile>"
    Then I should see "<result>"

    Examples:
      |tile| result  |
      |A1  | human A1|
      |A2  | human A2|
      |A3  | human A3|
      |B1  | human B1|
      |B2  | human B2|
      |B3  | human B3|
      |C1  | human C1|
      |C2  | human C2|
      |C3  | human C3|

  Scenario: Undo Last Move


  Scenario: Quit game in progress

