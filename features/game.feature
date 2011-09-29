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
    Then I should see "<result>" within "table"

    Examples:
      |tile| result  |
      |A1  |  A1|
      |A2  |  A2|
      |A3  |  A3|
      |B1  |  B1|
      |B2  |  B2|
      |B3  |  B3|
      |C1  |  C1|
      |C2  |  C2|
      |C3  |  C3|

  Scenario Outline: Make a Move
    Given a by4game exists
    And I visit the first game
    And I follow "<tile>"
    Then I should see "<result>"

    Examples:
      |tile| result  |
      |A1  |  A1|
      |A2  |  A2|
      |A3  |  A3|
      |A4  |  A4|
      |B1  |  B1|
      |B2  |  B2|
      |B3  |  B3|
      |B4  |  B4|
      |C1  |  C1|
      |C2  |  C2|
      |C3  |  C3|
      |C4  |  C4|
      |D1  |  D1|
      |D2  |  D2|
      |D3  |  D3|
      |D4  |  D4|

  Scenario Outline: Make a Move
    Given a by5game exists
    And I visit the first game
    And I follow "<tile>"
    Then I should see "<result>"

    Examples:
      |tile| result  |
      |A1  |  A1|
      |A2  |  A2|
      |A3  |  A3|
      |A4  |  A4|
      |A5  |  A5|
      |B1  |  B1|
      |B2  |  B2|
      |B3  |  B3|
      |B4  |  B4|
      |B5  |  B5|
      |C1  |  C1|
      |C2  |  C2|
      |C3  |  C3|
      |C4  |  C4|
      |C5  |  C5|
      |D1  |  D1|
      |D2  |  D2|
      |D3  |  D3|
      |D4  |  D4|
      |D5  |  D5|
      |E1  |  E1|
      |E2  |  E2|
      |E3  |  E3|
      |E4  |  E4|
      |E5  |  E5|


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
