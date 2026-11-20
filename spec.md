
# Specification — Library Requirements Analysis

## 1. System Intent

The Library Reservation System manages library operations, including the book catalog, physical book copies, reservations, loans, and returns.

Main entities: Reader, Librarian, Book, BookCopy, Reservation, and Loan.

## 2. Actors and Their Goals

- **Reader:** browse the catalog, check availability, reserve copies, view reservation status, and request borrowing and returning books.
- **Librarian:** manage the catalog, physical copies and reservations, and register loans and returns.

## 3. Use Cases

**Reader:** Browse Book Catalog, View Book Copy Availability, Reserve a Book Copy, View Reservation Status, Request to Borrow a Book, Request to Return a Book.

**Librarian:** Browse Book Catalog, Manage Book Catalog, Manage Book Copies, Register a Book Loan, Register a Book Return, Manage Reservations.

## 4. Selected Use Case

**Use Case:** UC-01 — Reserve a Book Copy  
**Primary Actor:** Reader  
**Goal:** Reserve an available physical book copy.  
**Preconditions:** The Reader is registered, and the selected BookCopy exists.  
**Main Steps:** The Reader selects an available copy, requests a reservation, and the system checks availability and creates the reservation.  
**Expected Outcome:** A reservation linked to the Reader and BookCopy is created with status "Active".

Detailed flows: `use-cases/UC-01-reserve-book-copy.md`.

## 5. Acceptance Criteria

- A registered Reader can reserve an available BookCopy.
- The reservation is linked to the Reader and the selected BookCopy.
- The reservation receives the "Active" status.
- The system prevents reservations when no copies are available or the selected copy already has an active reservation.
- The system informs the Reader when a reservation cannot be created.

## 6. Scope and Out of Scope

**In Scope:** catalog and physical copy management, availability checking, reservations, loans, returns, and Reader–Librarian interactions.

**Out of Scope:** online payments and fines, book delivery, external library integrations, mobile application development, physical database implementation, SQL scripts, and book recommendation systems.

