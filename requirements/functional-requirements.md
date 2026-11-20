
# Functional Requirements — EARS

## FR-01: Successful Reservation

WHEN a registered Reader requests to reserve an available book copy,
the system SHALL create a reservation linked to that Reader and that book copy.

## FR-02: Reservation Status

WHEN the system creates a reservation,
the system SHALL set its status to "Active".

## FR-03: No Available Copies

WHEN a Reader attempts to reserve a book and no available copies exist,
the system SHALL prevent the reservation and inform the Reader that no copies are available.

## FR-04: Already Reserved Copy

WHEN a Reader attempts to reserve a book copy that already has an active reservation,
the system SHALL prevent the creation of a new reservation for that copy and inform the Reader that it is unavailable.
