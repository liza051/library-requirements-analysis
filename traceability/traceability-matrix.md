
# Traceability Matrix

## Use Case: UC-01 — Reserve a Book Copy

| Use Case ID | Scenario ID | Scenario | Related Requirements |
|---|---|---|---|
| UC-01 | SC-01 | Successful reservation | FR-01, FR-02 |
| UC-01 | SC-02 | No available book copies | FR-03 |
| UC-01 | SC-03 | Selected book copy is already reserved | FR-04 |

## Requirements Coverage

| Requirement ID | Description | Covered by Scenario |
|---|---|---|
| FR-01 | Create a reservation linked to a Reader and BookCopy | SC-01 |
| FR-02 | Set the reservation status to Active | SC-01 |
| FR-03 | Prevent reservation when no copies are available | SC-02 |
| FR-04 | Prevent reservation of an already reserved copy | SC-03 |

## Notes

All functional requirements are linked to at least one Gherkin scenario.

Non-functional requirements are excluded from this matrix according to the assignment requirements.
