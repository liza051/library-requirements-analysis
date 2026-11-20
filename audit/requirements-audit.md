
# Requirements Audit

## 1. Audit Scope

The audit checks consistency between the requirements specification, use case diagram, Gherkin scenarios, functional requirements, and the Lab 1 data model.

## 2. Top 3 Discrepancies

### Discrepancy 1: Reservation Availability Rules

**Issue:** The Gherkin scenarios distinguish between no available copies and a selected copy that is already reserved. However, the requirements must clearly distinguish these two situations.

**Fix:** Keep SC-02 and SC-03 as separate scenarios and maintain separate functional requirements FR-03 and FR-04.

**Status:** Addressed in the current requirements.

### Discrepancy 2: Borrowing and Returning Books

**Issue:** The initial use case diagram did not clearly distinguish between Readers requesting loans and returns and Librarians registering these transactions.

**Fix:** Updated the specification and use case diagram. Readers request borrowing and returning, while Librarians register the corresponding transactions.

**Status:** Addressed.

### Discrepancy 3: Reservation and Book Copy Relationship

**Issue:** The requirements must remain consistent with the Lab 1 data model, where each Reservation concerns one physical BookCopy rather than an abstract Book.

**Fix:** Keep the reservation process linked to a specific BookCopy and ensure that the Gherkin scenarios and functional requirements use the same rule.

**Status:** Addressed in the current scenarios and requirements.

## 3. Conclusion

The audit identified three discrepancies related to reservation rules, actor responsibilities, and consistency with the Lab 1 data model. The identified issues were reviewed, and further clarification is required for the borrowing and returning use cases.

## 4. EARS and NFR Review

### Functional Requirements
All four functional requirements use the EARS structure with WHEN and SHALL statements. Each functional requirement is linked to at least one Gherkin scenario.

### Non-Functional Requirements
The non-functional requirements define measurable or verifiable quality criteria:
- Performance: 95% of requests within 2 seconds under a load of up to 50 concurrent users.
- Availability: at least 99.5% per calendar month, excluding scheduled maintenance.
- Security and access control: access must be denied in 100% of unauthorized requests.
- Language: all interface elements and messages must be in Ukrainian.
- Browser compatibility: the latest two stable versions of three specified browsers.

**Audit result:** The requirements were reviewed and clarified. NFR-02 was updated to use a measurable availability target.

## 5. Use Case Diagram Review

- The diagram contains two actors: Reader and Librarian.
- Each actor is connected to their relevant goals.
- The system boundary is clearly identified.
- No include or extend relationships were added because no mandatory reusable or optional conditional behavior was identified.
- Actor generalization was not used because the actors have distinct responsibilities.
- The diagram uses a Mermaid flowchart to represent use cases. This is a visual notation limitation compared with a standard UML Use Case diagram.

## 6. Consistency with Lab 1 Data Model

The requirements analysis was compared with the Lab 1 ER model.

- Reader and Librarian are consistent with the existing entities.
- Reservations are linked to a specific physical BookCopy.
- Each BookCopy belongs to one Book.
- Each Reservation concerns one BookCopy.
- Loan and return operations remain consistent with the Loan entity.

**Audit result:** No new entity conflicts were identified. The requirements preserve the main relationships defined in the Lab 1 data model.