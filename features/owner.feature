Feature: Owner
  In order to create a new locker owner with name and address
  I want to ensure an owner is created successfully

  Scenario Outline: Create locker owner with name and address
    Given I have created a locker with <name> and <address>
    Then the name should be <name> 
    And the address should be <address>

  Examples:
    | name   | address           |  
    | winnie | elgin and bayview |  
    | bela   | 19 and barthurst  |  
    | kathy  | elgin and yonge   |  
