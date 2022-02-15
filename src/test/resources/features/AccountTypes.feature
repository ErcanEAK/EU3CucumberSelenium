Feature: Account types
@wip @smoke
  Scenario: Driver user
    Given the user logged in as "driver"
    When the user navigates to "Activities" "Calendar Events"
    Then the title contains "Calendar Events - Activities"

    Scenario: sales manager user
      Given the user logged in as "sales manager"
      When the user navigates to "Customers" "Accounts"
      Then the title contains "Accounts - Customers"
@smoke
  Scenario: store manager user
    Given the user logged in as "store manager"
    When the user navigates to "Customers" "Contacts"
    Then the title contains "Contacts - Customers"

  Scenario Outline: Login With Different accounts
    Given the user logged in as "<userType>"
    When the user navigates to "<Tab>" "<Module>"
    Then the title contains "<title>"


    Examples:
    |userType       |Tab       |Module          |title                       |
    |driver         |Activities|Calendar Events |Calendar Events - Activities|
    | sales manager |Customers |Accounts        |Accounts - Customers        |
    |store manager  |Customers |Contacts        |Contacts - Customers        |




  #Scenario: Driver user
    #####
    # Given the user logged in as "driver"

  #Scenario: sales manager user
   # Given the user logged in as "sales manager"

  #Scenario: store manager user
  # Given the user logged in as "store manager"


    Scenario Outline: Different user types
      Given the user logged in as "<userType>"
      Examples:
        |userType|
        |driver|
        |store manager|
        |sales manager|
        |adimin       |

