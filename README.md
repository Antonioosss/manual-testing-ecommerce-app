# Manual QA Testing Project - SauceDemo E-commerce Application

## About the Project

This repository presents a complete Manual QA portfolio project based on the SauceDemo e-commerce web application.

The project demonstrates the testing process from test planning and test case design through manual execution, exploratory testing, defect reporting and final test reporting.

Additional API and SQL modules were created separately to demonstrate basic API testing and database validation skills.

## Project Highlights

| Area | Result |
|---|---:|
| Manual test cases | 30 |
| Passed | 30 |
| Failed | 0 |
| Manual test pass rate | 100% |
| Defects reported | 5 |
| API requests tested | 8 |
| API assertions | 43 |
| Failed API assertions | 0 |

## Application Under Test

- **Application:** SauceDemo
- **Type:** E-commerce web application
- **URL:** [https://www.saucedemo.com/](https://www.saucedemo.com/)
- **Browser:** Google Chrome
- **Operating System:** Windows 11

The primary planned test execution was performed using the `standard_user` account.

Alternative SauceDemo test accounts were used during exploratory testing.

## Manual Testing Scope

The following application areas were covered:

- authentication and login validation
- product list and product details
- product sorting
- adding and removing products from the shopping cart
- cart counter behavior
- cart navigation
- checkout form validation
- checkout overview
- order completion

## Testing Types

The project includes:

- Functional testing
- UI testing
- Negative testing
- Exploratory testing

## Manual Test Execution

A total of **30 manual test cases** were designed and executed for the core SauceDemo functionality.

| Status | Count |
|---|---:|
| Passed | 30 |
| Failed | 0 |
| Blocked | 0 |
| **Total** | **30** |

**Pass Rate: 100%**

All planned test cases executed using the `standard_user` account passed successfully.

## Defect Reporting

Exploratory testing using the `problem_user` account identified **5 defects**.

| Severity | Count |
|---|---:|
| High | 3 |
| Medium | 2 |
| Low | 0 |
| **Total** | **5** |

The identified defects affected areas such as:

- adding products to the cart
- product sorting
- product images
- product details
- checkout form functionality

Detailed defect descriptions, reproduction steps, expected and actual results, severity and priority are available in the `Bug_Reports` directory.

## API Testing

API testing was performed separately using the JSONPlaceholder REST API.

The Postman collection covers:

- GET requests
- POST requests
- PUT requests
- PATCH requests
- DELETE requests
- negative API scenarios
- response status validation
- response body validation
- data type validation
- response time validation

### API Execution Results

| Metric | Result |
|---|---:|
| Requests executed | 8 |
| Assertions executed | 43 |
| Failed requests | 0 |
| Failed assertions | 0 |

The collection was executed using both Postman Collection Runner and Newman CLI.

> JSONPlaceholder is used as a separate practice API and is not the backend of SauceDemo.

## SQL Data Validation

SQL testing was performed using a separate SQLite e-commerce database created for this project.

The database contains the following related tables:

- `users`
- `products`
- `orders`
- `order_items`

The SQL module demonstrates:

- data filtering and sorting
- aggregate functions
- `GROUP BY` and `HAVING`
- duplicate detection
- `INNER JOIN`
- `LEFT JOIN`
- `NULL` handling
- `COALESCE`
- validation of relationships between tables
- validation of calculated order totals

During SQL validation, a query comparing stored order totals with calculated product values helped identify duplicate records in the test database.

> The SQLite database is a separate practice database and is not connected to SauceDemo.

## Repository Structure

```text
manual-testing-ecommerce-app/
│
├── Test_Plan/
│   └── test_plan.md
│
├── Test_Cases/
│   ├── README.md
│   └── test_cases.xlsx
│
├── Bug_Reports/
│   ├── README.md
│   └── bug_reports.xlsx
│
├── API/
│   ├── README.md
│   ├── JSONPlaceholder_API_Testing.postman_collection.json
│   ├── JSONPlaceholder_Environment.postman_environment.json
│   └── collection_runner_results.png
│
├── SQL/
│   ├── README.md
│   ├── qa_store.db
│   └── test_queries.sql
│
├── Test_Report/
│   └── final_report.md
│
├── .gitignore
└── README.md
```

## Documentation

The repository contains:

- **Test Plan** – testing objectives, scope, environment, test types and entry/exit criteria
- **Test Cases** – 30 detailed manual test cases with steps, test data, expected results, priority and status
- **Bug Reports** – 5 documented defects identified during exploratory testing
- **Final Test Report** – summary of manual execution, defects, API testing, SQL validation, risks and final assessment
- **API Testing** – Postman collection, environment and execution results
- **SQL Validation** – SQLite database, validation queries and module documentation

## Tools Used

- Google Chrome
- Microsoft Excel
- Postman
- Newman CLI
- SQLite
- DB Browser for SQLite
- Git
- GitHub

## Skills Demonstrated

- Test planning
- Manual test case design
- Positive and negative testing
- Functional testing
- UI testing
- Exploratory testing
- Test execution and result reporting
- Defect identification and documentation
- Severity and priority assessment
- API testing with Postman
- API assertions and Newman CLI execution
- SQL data validation
- Relational database queries
- Git and GitHub workflow
- QA documentation

## Author

**Antoni Hawryło**

Junior QA Portfolio Project