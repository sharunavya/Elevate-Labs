create database loan_management_systems;
use loan_management_systems;
CREATE TABLE Customer (CustomerID  int auto_increment primary key, Name varchar(100) not null,Email varchar(100) unique,Phone varchar(15));
CREATE TABLE LoanType (LoanTypeID int auto_increment primary key, loanTypeName varchar(50) not null ,InterestRate DECIMAL(5,2) not null);
CREATE TABLE Employee (EmployeeID int auto_increment primary key,Name varchar(100) NOT NULL,Email varchar(100),Role varchar(50));
CREATE TABLE Loan (LoanID int auto_increment primary key,CustomerID int not null,LoanTypeID int not null,EmployeeID int,Amount decimal(10,2) not null,StartDate date ,EndDate date,
    foreign key(CustomerID)references Customer(CustomerID),foreign key (LoanTypeID) references LoanType(LoanTypeID),foreign key (EmployeeID) references Employee(EmployeeID));
    select*from customer;
    -- Insert Customers
INSERT INTO Customer (Name, Email, Phone)
VALUES 
('Priya Sharma', 'priya@gmail.com', '9876543210'),
('Rahul Mehta', 'rahul@gmail.com', '9876543211');

-- Insert Loan Types
INSERT INTO LoanType (loanTypeName, InterestRate)
VALUES 
('Personal Loan', 11.50),
('Home Loan', 8.75),
('Education Loan', 9.25);

-- Insert Employees
INSERT INTO Employee (Name, Email, Role)
VALUES 
('Anita R', 'anita@bank.com', 'Loan Officer'),
('Vikram S', 'vikram@bank.com', 'Branch Manager');

-- Insert Loans
INSERT INTO Loan (CustomerID, LoanTypeID, EmployeeID, Amount, StartDate, EndDate)
VALUES 
(1, 1, 1, 200000.00, '2024-01-10', '2026-01-10'),
(2, 2, 2, 1500000.00, '2023-06-15', '2033-06-15');

select*from customer;
select*from loan type;
select*from employee;
select*from loan;

alter table LoanType
rename column loanTypeName to  LoanCategory;
select*from loantype;

alter table  Customer
ADD DateOfBirth date;
select*from customer;

drop table loan;
select*from loan;

