# Bug Reports

## Overview

This directory contains defects identified during exploratory testing of the SauceDemo e-commerce web application.

A total of **5 defects** were identified while testing with the `problem_user` account.

The defects affect product presentation, sorting, cart functionality and the checkout process.

## Defect Summary

| Bug ID | Title | Severity | Priority | Status |
|---|---|---|---|---|
| BUG-001 | Some Add to Cart buttons on the Inventory page do not add products to the cart for `problem_user` | High | High | Open |
| BUG-002 | Sorting does not change the product order | Medium | Medium | Open |
| BUG-003 | Products display incorrect images | Medium | Medium | Open |
| BUG-004 | Product details for "Sauce Labs Fleece Jacket" are displayed incorrectly | High | High | Open |
| BUG-005 | Last Name cannot be entered during checkout | High | High | Open |

## Defects by Severity

| Severity | Count |
|---|---:|
| High | 3 |
| Medium | 2 |
| Low | 0 |
| **Total** | **5** |

The most significant defects affect the cart and checkout flow and may prevent a user from completing a purchase.

## Bug Report Structure

Each bug report contains information such as:

- Bug ID
- Title
- Preconditions
- Steps to Reproduce
- Expected Result
- Actual Result
- Severity
- Priority
- Status
- Environment

## Bug Report File

Detailed defect descriptions are available in:

`bug_reports.xlsx`