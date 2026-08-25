# Test Execution Report

## 1. Project Overview

This report summarizes the testing activities performed for the SauceDemo e-commerce web application.

The main goal of the project was to verify the core user flows of the application, identify functional and UI defects, and document the testing process using standard QA artifacts.

The project included manual functional testing, negative testing, exploratory testing, API testing using JSONPlaceholder, and SQL data validation using a separate SQLite e-commerce database.

## 2. Test Environment

- Operating System: Windows 11
- Browser: Google Chrome
- Application Under Test: SauceDemo
- Test User: `standard_user`
- Test Password: `secret_sauce`

## 3. Test Scope

The following areas of the SauceDemo application were covered during manual testing:

- authentication and login validation
- product list and product details
- product sorting
- adding and removing products from the cart
- cart counter behavior
- cart page navigation
- checkout information form validation
- checkout overview
- order completion

Additional exploratory testing was performed using alternative SauceDemo test accounts to identify abnormal application behavior and defects.

## 4. Test Execution Summary

A total of 30 manual test cases were executed for the core SauceDemo functionality.

| Status | Test Cases |
|---|---:|
| Passed | 30 |
| Failed | 0 |
| Blocked | 0 |
| **Total** | **30** |

**Pass Rate:** 100%

The executed test cases covered authentication, product browsing, sorting, cart operations, checkout form validation and order completion.

All planned manual test cases executed using the `standard_user` account passed successfully.

Additional defects were identified separately during exploratory testing with alternative SauceDemo test accounts. These findings are described in the Defect Summary and Exploratory Testing Results sections.

## 5. Defect Summary

During exploratory testing with the `problem_user` account, 5 defects were identified and documented.

### Defects by Severity

| Severity | Count |
|---|---:|
| High | 3 |
| Medium | 2 |
| Low | 0 |
| **Total** | **5** |

### Reported Defects

| Bug ID | Summary | Severity | Priority | Status |
|---|---|---|---|---|
| BUG-001 | Some Add to Cart buttons on the Inventory page do not add products to the cart for `problem_user` | High | High | Open |
| BUG-002 | Sorting does not change the product order | Medium | Medium | Open |
| BUG-003 | Products display incorrect images | Medium | Medium | Open |
| BUG-004 | Product details for "Sauce Labs Fleece Jacket" are displayed incorrectly | High | High | Open |
| BUG-005 | Last Name cannot be entered during checkout | High | High | Open |

The most significant defects affect adding products to the cart, product details and the checkout process. These issues can prevent the user from completing the primary purchase flow.

## 6. Exploratory Testing Results

Exploratory testing was performed using alternative SauceDemo test accounts to investigate application behavior outside the main `standard_user` test flow.

The `problem_user` account revealed multiple functional and UI issues, including:

- some products could not be added to the shopping cart
- product sorting did not change the displayed order
- products displayed incorrect images
- the Sauce Labs Fleece Jacket details page displayed incorrect product information
- the Last Name field could not be completed during checkout, blocking the user from continuing the purchase process

These issues were documented separately in the bug report and were not part of the 30 planned test cases executed with the `standard_user` account.

## 7. API Testing Summary

API testing was performed using JSONPlaceholder as a separate practice API.

The test suite covered basic CRUD operations and negative scenarios for the `/posts` endpoint.

### Tested Requests

- GET all posts
- GET single post
- POST create post
- PUT update post
- PATCH partially update post
- DELETE post
- GET non-existing post
- POST request with invalid payload

### Execution Results

| Metric | Result |
|---|---:|
| Requests executed | 8 |
| Assertions executed | 43 |
| Failed requests | 0 |
| Failed assertions | 0 |

The Postman collection was also executed using Newman CLI.

All automated API assertions completed successfully.

JSONPlaceholder does not persist changes made through POST, PUT, PATCH or DELETE requests and may accept payloads that would normally be considered invalid in a production API. These behaviors were treated as known limitations of the test environment.

## 8. SQL Data Validation Summary

SQL data validation was performed using a separate SQLite e-commerce database created for this project.

The database was used to practice and demonstrate validation of relational data across the `users`, `products`, `orders` and `order_items` tables.

The performed SQL checks included:

- product price and stock calculations
- filtering and sorting product data
- grouping and aggregation
- detection of duplicate product names
- identification of users without orders
- identification of orders assigned to non-existing users
- counting orders per user
- calculating completed order values
- combining data from multiple related tables
- validating stored order totals against values calculated from product prices and quantities

During the validation process, duplicate records in the `order_items` table were detected because calculated order totals did not match the stored totals. After inspecting the underlying data, the duplicate records were identified and removed.

This demonstrated how SQL queries can be used not only to retrieve data, but also to identify data integrity issues.

## 9. Risks and Limitations

The testing activities were performed in a limited test environment and do not represent full production-level coverage.

The main limitations of the project include:

- manual testing was performed mainly in Google Chrome on Windows 11
- no cross-browser testing was performed
- no mobile or responsive testing was included
- performance, load and security testing were outside the project scope
- SauceDemo does not provide direct access to its backend database
- API testing was performed using JSONPlaceholder as a separate practice API
- SQL validation was performed using a separate SQLite e-commerce database
- exploratory testing focused mainly on selected alternative SauceDemo test accounts

Because of these limitations, the results should be treated as an assessment of the tested functionality rather than a complete quality evaluation of the entire application.

## 10. Final Assessment

The core SauceDemo purchase flow tested with the `standard_user` account operated correctly, with all 30 planned manual test cases passing.

However, exploratory testing with the `problem_user` account revealed 5 open defects, including issues affecting cart functionality, product presentation and checkout.

The API test suite completed successfully with 8 requests and 43 assertions without failures. SQL validation also demonstrated correct use of relational data checks and helped identify duplicated test data during the project.

Based on the performed testing, the main SauceDemo flow is functional for the standard test user, but the defects identified for alternative user scenarios indicate that additional investigation and regression testing would be required before considering the tested application behavior fully reliable.

Overall, the project demonstrates manual test design and execution, defect reporting, exploratory testing, API validation and SQL-based data verification.