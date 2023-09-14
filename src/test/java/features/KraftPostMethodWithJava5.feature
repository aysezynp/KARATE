Feature: Post Method + Karate/Java Integration

  Background:
    * def kraftBaseUrl = "https://www.krafttechexlab.com/sw/api/v1"

    Scenario: Register a new user with
      Given url kraftBaseUrl+ "/allusers/register"
      Given request
      """
      {
         "name": "test1300",
         "email": "test1300@krafttechexlab.com",
         "password": "123467"
      }
      """
      When method post
      Then status 200
      Then print response

    Scenario: register as a new user with the help of java
      #point the class that we want to run
      #java.type --> used to connect
      #request
      Given def KDG = Java.type("utilities.KraftDataGenerator")
      Given def newUser = KDG.createUser()
      Given url kraftBaseUrl+ "/allusers/register"
      Given request newUser
      When method post
      #response
      Then status 200
      Then match newUser.name == response.name
      Then match newUser.email == response.email







