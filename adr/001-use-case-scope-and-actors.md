
# ADR 001: Use Case Scope and Actor Responsibilities

## Status
Accepted

## Context
The Library Reservation System supports readers and librarians in managing book reservations, loans, and returns.

The requirements analysis needs a clear separation between reader goals and librarian responsibilities. It must also remain consistent with the Lab 1 data model, where reservations are linked to physical book copies.

## Decision

1. Reader and Librarian are separate actors.
2. Readers can browse the catalog, view copy availability, request reservations, request borrowing, and request returns.
3. Librarians manage the catalog and physical copies, manage reservations, and register loans and returns.
4. A reservation is always linked to one specific physical BookCopy.
5. The detailed use case selected for analysis is "Reserve a Book Copy".

## Consequences

- Actor responsibilities are clearly separated.
- The requirements remain consistent with the Lab 1 data model.
- Reservation scenarios can be traced to specific functional requirements.
- Loan and return workflows require additional detailed analysis if they are included in future work.
