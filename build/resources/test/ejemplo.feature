Feature: Get Tests on reqres.in
  Background:
    * def urlBase = 'https://reqres.in'
    * def usersPath = '/api/users?page=2'
  Scenario: Get users list
    Given url  urlBase + usersPath
    And header name = "Alvaro"
    And header job = "QA"
    When method POST
    Then status 201
    And print response