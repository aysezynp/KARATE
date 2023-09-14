Feature: Parameter Examples

  Background:
    * def demoQABaseUrl = "https://bookstore.toolsqa.com/"
    * def kraftBaseUrl = "https://www.krafttechexlab.com/sw/api/v1"

   #send a request or getting all users to kraftexlab and verify
  Scenario: Query parameters
    * def isbnNumber = "9781449325862"
    * url demoQABaseUrl+ "/BookStore/v1/Book"
    * param ISBN = isbnNumber
    When method get
    Then status 200
    Then match response.isbn == isbnNumber

  Scenario: Register a new user with
    Given def KDG = Java.type("utilities.KraftDataGenerator")
    Given def newUser = KDG.createUser()
    Given url kraftBaseUrl+ "/allusers/register"
    Given request newUser
    When method post
    Then status 200


