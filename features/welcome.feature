Feature: Welcome Page
  As a researcher
  I want to arrive at a landing page
  So I can start new experiement or review old ones

  Scenario: Visit Welcome Page without being logged in
    When I go to the root page
    Then I should not see "New Subject"

  Scenario: Visit while logged in
    When I log in
    And I go to the root page
    Then I should not see "Sign in"
    And I should be on the root page

  Scenario: Sign Out
    When I log in
    And I follow "Sign out"
    Then I should see "Sign in"

  Scenario: Start a new Game
    When I log in
    When I go to the root page
    And I follow "New Subject"
    Then I should be on the new subject page

  Scenario: View previous subjects
    When I log in
    And I go to the root page
    And I follow "Previous Subjects"
    Then I should be on the subjects page
