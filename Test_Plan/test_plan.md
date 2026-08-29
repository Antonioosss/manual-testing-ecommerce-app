# Test Plan - SauceDemo E-commerce Application

## 1. Project Overview

This document describes the testing approach for the SauceDemo e-commerce web application.

The main goal of testing is to verify that the key user flows work correctly, including login, product browsing, cart management, and the checkout process.

## 2. Application Under Test

- Application name: SauceDemo
- Application type: E-commerce web application
- URL: https://www.saucedemo.com/

## 3. Test Objectives

The objectives of testing are:

* Verify login functionality
* Verify validation messages for incorrect login data
* Verify product list functionality
* Verify product details page navigation
* Verify product sorting by name and price
* Verify adding and removing products from the cart
* Verify cart counter behavior
* Verify checkout form validation
* Verify order summary and order completion

## 4. Scope of Testing

The following modules are included in testing:

* Login
* Products
* Product Details
* Cart
* Checkout

## 5. Out of Scope

The following areas are not included in this project:

* Performance testing
* Security testing
* Mobile/responsive testing
* Backend/database testing of the SauceDemo application

## 6. Test Environment

- Operating System: Windows 11
- Browser: Google Chrome

### Test Data

Primary test account:

- Username: `standard_user`
- Password: `secret_sauce`

Alternative SauceDemo test accounts may be used during exploratory testing.

## 7. Test Types

The following test types will be performed:

* Functional testing
* UI testing
* Negative testing
* Exploratory testing

## 8. Entry Criteria

Testing can start when:

* The application is available
* Test credentials are known
* Main functionalities are accessible
* Test documentation structure is prepared

## 9. Exit Criteria

Testing can be finished when:

* Planned test cases are executed
* Found defects are documented
* Final test report is prepared
* Critical user flows are verified

## 10. Risks

Potential risks:

* The application may change during testing
* Some features may work differently than expected due to missing formal requirements

