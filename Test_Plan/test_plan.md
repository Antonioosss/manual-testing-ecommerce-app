# Test Plan - SauceDemo E-commerce Application

## 1. Project Overview

This document describes the testing approach for the SauceDemo e-commerce web application.

The main goal of testing is to verify that the key user flows work correctly, including login, product browsing, cart management and checkout process.

## 2. Application Under Test

Application name: SauceDemo
Application type: E-commerce web application
URL: https://www.saucedemo.com/

## 3. Test Objectives

The objectives of testing are:

- Verify login functionality
- Verify validation messages for incorrect login data
- Verify product list functionality
- Verify product details page navigation
- Verify product sorting by name and price
- Verify adding and removing products from cart
- Verify cart counter behavior
- Verify checkout form validation
- Verify order summary and order completion

## 4. Scope of testing

The following modules are included in testing:

- Login
- Products
- Product Details
- Cart
- Checkout

## 5. Out of Scope

The following areas are not included in this project:

- Performance testing
- Security testing
- Payment gateway testing
- Mobile application testing
- Backend/database testing of the SauceDemo application

## 6. Test Environment

Operating system: Windows 11
Browser: Google Chrome
Test Data:

Username:
standard_user

Password:
secret_sauce

## 7. Test Types

The following test types will be performed:

- Functional testing
- Smoke testing
- Regression testing
- UI testing
- Negative testing

## 8. Entry Criteria

Testing can start when:

- The application is available
- Test credentials are known
- Main functionalities are accessible
- Test documentation structure is prepared

## 9. Exit Criteria

Testing can be finished when:

- Planned test cases are executed
- Found defects are documented
- Final test report is prepared
- Critical user flows are verified

## 10. Risks

Potential risks:

- Application may change during testing
- Some features may work differently than expected due to missing formal requirments
- Quantity selection is not available in the cart, but this may be an intended limitation

## 11. Tested Functionalities

### Login

Observed validation messages:

- Epic sadface: Username is required
- Epic sadface: Password is required
- Epic sadface: Username and password do not match any user in this service

### Products

Observed functionalities:

- Product list is displayed after successful login
- User can open product details by clicking product image or product name
- User can sort products by name
- User can sort products by price
- User can add products to cart

### Cart

Observed funcionalities:

- User can remove products from cart
- Cart counter updates after adding products
- User can proceed to checkout from cart
- Buying more than one unit of the same product is not available

### Checkout

Observed funtionalities:

- User can enter customer data
- User can continue to order overview
- User can complete an order
- Order completion confirmation is displayed

Additional observations:

- First Name field accepts a single-character value.
- Last Name field accepts a single-character value.
- Zip/Postal Code field accepts a single-character value.

These fields do not enforce a minimum input length. Whether this is a defect depends on the business requirements.
