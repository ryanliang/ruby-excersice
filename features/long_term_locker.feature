Feature: LongTermLocker
  In order to create a new long term locker
  I want to ensure the locker is created successfully

  Scenario: Create a long term locker
    # TODO: Use cucumber step to extract the create owner steps 
    #       and check the owner as well.
    # Given I have created an owner with name "Bela" and address "19 and barthurst"
    # Then the owner should be created
    Given I create a long term locker with the some owner and date "2013-09-15"
    Then the long term locker should be created
    # And the address should be "19 and barthurst"
    # And the name should be "Bela"
    And the expiry date should be "2013-09-15"


  Scenario: Set a new expiry date for the long term locker
    Given I create a long term locker with the some owner and date "2013-09-15"
    Then I set a new expiry date "2014-01-02"
    And the expiry date should be "2014-01-02"
