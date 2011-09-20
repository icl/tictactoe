Feature: Tic Tac Toe Game
  As a researcher
  I would like to be able to start a game for a subject
  So I can record their responses

  Background:
    Given an subject exists
    And I visit the first subject's page

  Scenario: New Game
    When I follow "New Game"
