Feature: Reserve a Book Copy
  As a Reader
  I want to reserve an available physical book copy
  So that I can borrow it later

  Scenario 1: Successful reservation
    Given the Reader is registered in the library system
    And the selected book copy is available
    When the Reader reserves the selected book copy
    Then the system creates a reservation
    And the reservation is linked to the Reader
    And the reservation is linked to the selected book copy
    And the reservation status is set to "Active"

  Scenario 2: No available book copies
    Given the Reader is registered in the library system
    And no available copies of the selected book exist
    When the Reader attempts to reserve a book copy
    Then the system does not create a reservation
    And the system informs the Reader that no copies are available

  Scenario 3: Selected book copy is already reserved
    Given the Reader is registered in the library system
    And the selected book copy already has an active reservation
    When the Reader attempts to reserve the selected book copy
    Then the system does not create a new reservation
    And the system informs the Reader that the selected copy is unavailable