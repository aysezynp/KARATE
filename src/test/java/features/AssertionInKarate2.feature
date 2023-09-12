Feature: Assertions by using math keyword

  #how to make assertions with KARATE
  Scenario: some matching example
    * def name = "Ayse"
    * match name == "Ayse"
    * match name != "Emine"

  Scenario: more matching example
    * def employee =
    """
    {
       "firstname":"Hasan",
       "lastname":"Yıldırım",
       "salary":55000,
       "active":true
    }
    """
    * match employee.firstname == "Hasan"
    * match employee.lastname == "Yıldırım"
    * match employee.salary == 55000
    * match employee.active == true

  Scenario: fuzzy matching
    * def employee =
    """
    {
       "firstname":"Hasan",
       "lastname":"Yıldırım",
       "salary":55000,
       "active":true
    }
    """
    #validate that the type of firstname is string
    * match  employee.firstname == "#string"
    * match employee.lastname == "#string"
    * match employee.salary == "#number"
    * match employee.active == "#boolean"
    #validate that firstName exists
    * match employee.firstname =="#present"
     #validate that lastName does not exist
    * match employee.gender == "#notpresent"

    Scenario: contains matching
      * def students =
        """
        [
        {
         "name": "Ümit",
         "salary": 52000
        },
        {
         "name":"Hatice",
         "salary":10000
        }
        ]
        """
      #how to verify length of array
      * def lengthOfArray = students.length
      * match lengthOfArray == 2
      # how to check is array contains a specific element
      * match students contains {"name": "Ümit", "salary": 52000}

     Scenario: contains matching-2
       * def arr = ["Serkan","Suad","Ziya","Uğur"]
       * print arr
       * match arr contains "Serkan"
       * match arr !contains "Eren"






