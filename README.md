# 💳 Loan Management System (MySQL)

This project is a **Loan Management System** built using **MySQL**, simulating a basic structure of how loans, customers, employees, and loan types are managed in a financial institution.

---

## 📌 Project Overview

This SQL script:
- Creates tables for `Customer`, `LoanType`, `Employee`, and `Loan`
- Defines primary and foreign key relationships
- Inserts sample data
- Performs basic alterations like renaming columns and adding fields

---

## 🛠️ Technologies Used
- MySQL (Tested on MySQL Workbench)
- SQL (DDL and DML)
- GitHub for version control

---

## 🗂️ Database: `loan_management_systems`

### ✅ Tables and Fields

#### 1. **Customer**
| Column        | Type           | Constraint         |
|---------------|----------------|--------------------|
| CustomerID     | INT            | Primary Key, Auto Increment |
| Name           | VARCHAR(100)   | NOT NULL           |
| Email          | VARCHAR(100)   | UNIQUE             |
| Phone          | VARCHAR(15)    |                    |
| DateOfBirth    | DATE           | *(added later)*    |

#### 2. **LoanType** *(renamed to LoanCategory)*
| Column        | Type           | Constraint         |
|---------------|----------------|--------------------|
| LoanTypeID     | INT            | Primary Key, Auto Increment |
| LoanCategory   | VARCHAR(50)    | NOT NULL           |
| InterestRate   | DECIMAL(5,2)   | NOT NULL           |

#### 3. **Employee**
| Column        | Type           | Constraint         |
|---------------|----------------|--------------------|
| EmployeeID     | INT            | Primary Key, Auto Increment |
| Name           | VARCHAR(100)   | NOT NULL           |
| Email          | VARCHAR(100)   |                    |
| Role           | VARCHAR(50)    |                    |

#### 4. **Loan**
| Column        | Type           | Constraint         |
|---------------|----------------|--------------------|
| LoanID         | INT            | Primary Key, Auto Increment |
| CustomerID     | INT            | Foreign Key → Customer |
| LoanTypeID     | INT            | Foreign Key → LoanType |
| EmployeeID     | INT            | Foreign Key → Employee |
| Amount         | DECIMAL(10,2)  | NOT NULL           |
| StartDate      | DATE           |                    |
| EndDate        | DATE           |                    |

---

## 🔗 Foreign Key Relationships

- `Loan.CustomerID` → `Customer.CustomerID`
- `Loan.LoanTypeID` → `LoanType.LoanTypeID`
- `Loan.EmployeeID` → `Employee.EmployeeID`

---

## 📥 Sample Data Inserted

```sql
-- Customers
Priya Sharma
Rahul Mehta

-- Loan Types
Personal Loan (11.50%)
Home Loan (8.75%)
Education Loan (9.25%)

-- Employees
Anita R (Loan Officer)
Vikram S (Branch Manager)

-- Loans
2 loans linked with customers, loan types, and employees
