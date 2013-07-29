Feature: Owner
  In order to create a new locker owner with name and address
  I want to ensure an owner is created successfully

  Scenario: Create locker owner with name and address
    Given I have created an owner with name "Bela" and address "19 and barthurst"
    Then the owner should be created
    And the address should be "19 and barthurst"
    And the name should be "Bela"
