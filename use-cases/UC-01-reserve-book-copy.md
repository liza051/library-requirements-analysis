# UC-01 — Reserve a Book Copy

## 1. General Information

**Primary Actor:** Reader

**Goal:** Reserve an available physical copy of a book.

**Trigger:** The Reader selects a book copy and requests a reservation.

**Preconditions:**
- The Reader is registered in the library system.
- The selected book copy exists in the library catalog.

**Postconditions:**
- If successful, a reservation is created and linked to the Reader and the selected BookCopy.
- The reservation status is set to "Active".
- If the reservation cannot be created, no new reservation is stored and the Reader receives an explanation.

## 2. Main Success Flow

1. The Reader opens the library catalog.
2. The system displays available books and physical copies.
3. The Reader selects an available BookCopy.
4. The Reader requests to reserve the selected BookCopy.
5. The system checks whether the copy is available.
6. The system creates a reservation linked to the Reader and the selected BookCopy.
7. The system sets the reservation status to "Active".
8. The system informs the Reader that the reservation was successful.

## 3. Alternative and Exception Flows

### AF-01: No Available Copies

1. The Reader attempts to reserve a copy of a selected book.
2. The system checks the availability of physical copies.
3. The system finds that no available copies exist.
4. The system does not create a reservation.
5. The system informs the Reader that no copies are available.

### AF-02: Selected Copy Already Reserved

1. The Reader selects a physical book copy.
2. The Reader requests a reservation.
3. The system checks the reservation status of the selected copy.
4. The system finds an active reservation for that copy.
5. The system does not create a new reservation.
6. The system informs the Reader that the selected copy is unavailable.

## 4. Related Scenarios

- SC-01 — Successful reservation
- SC-02 — No available book copies
- SC-03 — Selected book copy is already reserved

## 5. Related Requirements

- FR-01 — Create a reservation linked to a Reader and BookCopy.
- FR-02 — Set the reservation status to Active.
- FR-03 — Prevent reservation when no copies are available.
- FR-04 — Prevent reservation of an already reserved copy.