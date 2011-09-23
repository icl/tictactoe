Feature: Subject Records
  As a researcher
  I would like to keep information about a subject
  So I can cross reference results

  Background:
    Given I log in
    And I am on the new subject page

  Scenario: Create Subject
    When I fill in "Subject Initials" with "BB"
    And I press "Create Subject"
    Then I should see "Subject was successfully created"

  Scenario: Don't Fill in Initials
    When I press "Create Subject"
    Then I should see "Initials can't be blank"
