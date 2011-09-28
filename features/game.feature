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

  Scenario: Start a new training game
    When I select "3" from "Dimension"
    And I select "Training" from "Condition"

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

  Scenario Outline: Make a Move
    Given a by4game exists
    And I visit the first game
    And I follow "<tile>"
    Then I should see "<result>"

    Examples:
      |tile| result  |
      |A1  | human A1|
      |A2  | human A2|
      |A3  | human A3|
      |A4  | human A4|
      |B1  | human B1|
      |B2  | human B2|
      |B3  | human B3|
      |B4  | human B4|
      |C1  | human C1|
      |C2  | human C2|
      |C3  | human C3|
      |C4  | human C4|
      |D1  | human D1|
      |D2  | human D2|
      |D3  | human D3|
      |D4  | human D4|

  Scenario Outline: Make a Move
    Given a by5game exists
    And I visit the first game
    And I follow "<tile>"
    Then I should see "<result>"

    Examples:
      |tile| result  |
      |A1  | human A1|
      |A2  | human A2|
      |A3  | human A3|
      |A4  | human A4|
      |A5  | human A5|
      |B1  | human B1|
      |B2  | human B2|
      |B3  | human B3|
      |B4  | human B4|
      |B5  | human B5|
      |C1  | human C1|
      |C2  | human C2|
      |C3  | human C3|
      |C4  | human C4|
      |C5  | human C5|
      |D1  | human D1|
      |D2  | human D2|
      |D3  | human D3|
      |D4  | human D4|
      |D5  | human D5|
      |E1  | human E1|
      |E2  | human E2|
      |E3  | human E3|
      |E4  | human E4|
      |E5  | human E5|


  Scenario: Undo Last Move
    Given a game exists
    And I visit the first game
    When I follow "A1"
    And I follow "Undo Last Move"
    Then I should not see "human A1"


  Scenario: Quit game in progress
    Given a game exists
    And I visit the first game
    And I follow "Return to Subject"
    Then I should be redirected to a subject page
