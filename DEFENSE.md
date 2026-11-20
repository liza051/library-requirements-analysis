# Lab 2 — Requirements Analysis

## 1. Intent and Acceptance Criteria

The goal is to analyze requirements for the Library Reservation System, define actors and use cases, and describe the reservation process in detail.

The selected use case, UC-01 — Reserve a Book Copy, is accepted when a registered Reader can reserve an available physical copy, the reservation is linked to the Reader and BookCopy, and the system prevents duplicate or unavailable reservations.

## 2. Selected Use Case

**UC-01 — Reserve a Book Copy**

The Reader is the primary actor. The use case includes one successful scenario and two alternative scenarios:
- Successful reservation.
- No available book copies.
- Selected copy already has an active reservation.

These scenarios describe different outcomes of the same user goal.

## 3. Top 3 Discrepancies and Fixes

1. **Reservation availability rules:** The initial requirements did not clearly distinguish between no available copies and an already reserved copy. Separate scenarios SC-02 and SC-03 and requirements FR-03 and FR-04 were added.

2. **Actor responsibilities:** Reader requests to borrow and return books, while Librarian registers loans and returns. The specification and use case diagram were updated.

3. **Consistency with Lab 1:** Reservations must refer to physical BookCopies, not abstract Books. This relationship was preserved in the specification, scenarios, and functional requirements.

## 4. Modeling Decisions

- Reader and Librarian are separate actors with different responsibilities.
- One Author is associated with each Book, consistent with Lab 1.
- Each Reservation concerns one physical BookCopy.
- No include, extend, or actor generalization relationships were used because they were not necessary for the identified goals.
- Mermaid flowchart notation was used to represent the use cases. It is not a formal UML Use Case diagram.

## 5. Verification

- Functional requirements FR-01–FR-04 use EARS-style statements.
- Non-functional requirements NFR-01–NFR-06 define quality criteria.
- All functional requirements are linked to Gherkin scenarios in the traceability matrix.
- The requirements audit checks consistency with the Lab 1 data model.
- AI suggestions were reviewed and corrected by the student.

## 6. Main Artifacts

- `spec.md`
- `use-cases/use-case-diagram.mmd`
- `use-cases/UC-01-reserve-book-copy.md`
- `scenarios/reserve-book-copy.feature`
- `requirements/functional-requirements.md`
- `requirements/non-functional-requirements.md`
- `traceability/traceability-matrix.md`
- `audit/requirements-audit.md`
- `adr/001-use-case-scope-and-actors.md`
- `ai/`

## 7. Submission

**GitHub Repository:** https://github.com/liza051/library-requirements-analysis

**Pull Request:** https://github.com/liza051/library-requirements-analysis/pull/1