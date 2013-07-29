Feature: DailyLocker
  In order to create a new daily locker
  I want to ensure the locker is created successfully

  Scenario: Create a daily locker owner with name and address
    Given I have created an owner with name "Bela" and address "19 and barthurst"
    Then the owner should be created
    And I create a daily locker with the same owner
    Then the locker should be created
    And the address should be "19 and barthurst"
    And the name should be "Bela"
    And the expiry date should be today
    And I should see an error when trying to set expiry date
