@javascript

Feature: Move in Game

  Background:
    Given I log in

  Scenario Outline: Make a Move
    Given a game exists
    And I visit the first game
    And I follow "<tile>"
    Then I should see "<result>" within "table"

    Examples:
      |tile| result  |
      |1  | 1|
      |2  | 2|
      |3  | 3|
      |4  | 4|
      |5  | 5|
      |6  | 6|
      |7  | 7|
      |8  | 8|
      |9  | 9|

  Scenario Outline: Make a Move
    Given a by4game exists
    And I visit the first game
    And I follow "<tile>"
    Then I should see "<result>" within "table"


    Examples:
      |tile| result  |
      |1  |  1  |
      |2  |  2  |
      |3  |  3  |
      |4  |  4  |
      |5  |  5  |
      |6  |  6  |
      |7  |  7  |
      |8  |  8  |
      |9  |  9  |
      |10  | 10|
      |11  | 11|
      |12  | 12|
      |13  | 13|
      |14  | 14|
      |15  | 15|
      |16  | 16|


  Scenario: Undo Last Move
    Given a game exists
    And I visit the first game
    When I follow "1"
    And I follow "Undo Last Move"
    Then I should not see "1" within "table"

