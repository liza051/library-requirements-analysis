# Non-Functional Requirements (NFR)


## NFR-01: Performance
WHEN the system is accessed by up to 50 concurrent users,
the system SHALL process at least 95% of catalog browsing, availability checking, and reservation requests within 2 seconds.

## NFR-02: Availability

The system SHALL maintain at least 99.5% service availability per calendar month, excluding scheduled maintenance.



## NFR-03: Security
The system SHALL deny access to personal reservation and loan information in 100% of requests from unauthenticated users.

## NFR-04: Access Control
The system SHALL deny access to librarian management functions in 100% of requests from authenticated users without the Librarian role.


## NFR-05: Language
The system SHALL provide all user interface elements, navigation labels, and system messages in Ukrainian.

## NFR-06: Browser Compatibility
The system SHALL support the latest two stable versions of Google Chrome, Mozilla Firefox, and Microsoft Edge at the time of release.


