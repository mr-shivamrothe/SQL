-------------------------Employee and Incentive---------------------------------
------------------------------------------------------------------------------------
        --Employee--

CREATE TABLE Employee 
(Emp_id         number Primary key,
First_name      Varchar2(10),
Last_name       varchar2(10),
Salary          Number,
Joining_Date    Date,
Department      Varchar2(15)
);

Select * from Employee;

Truncate Table Employee;

INSERT INTO Employee VALUES(1,'John','Abraham',1000000,to_date('01-JAN-13', 'dd-mon-yy'),'Banking');
INSERT INTO Employee VALUES(2,'Michael','Clarke',800000,to_date('01-JAN-13','dd-mon-yy'),'Insurance');
INSERT INTO Employee VALUES(3,'Roy','Thomas',700000,to_date('01-FEB-13','dd-mon-yy'),'Banking');
INSERT INTO Employee VALUES(4,'Tom','Jose',600000,to_date('01-FEB-13','dd-mon-yy'),'Insurance');
INSERT INTO Employee VALUES(5,'Jerry','Pinto',650000,to_date('01-FEB-13','dd-mon-yy'),'Insurance');
INSERT INTO Employee VALUES(6,'Philip','Mathew',750000,to_date('01-JAN-13 ','dd-mon-yy'),'Service');

--------------------------------------------------------------------------------
        --Incentives--  

Create table Incentives
(Employee_ref_id        Number REFERENCES Employee (Emp_id),
Incentive_date           DATE,
Incentive_amount        Number
);

Select * from Incentives;

Truncate Table Incentives;

INSERT INTO Incentives VALUES(1,To_Date('01-Feb-13','dd-Mon-yy'),5000);
INSERT INTO Incentives VALUES(2,To_Date('01-Feb-13','DD-Mon-yy'),3000);
INSERT INTO Incentives VALUES(3,To_Date('01-Feb-13','DD-Mon-yy'),4000);
INSERT INTO Incentives VALUES(1,To_Date('01-Jan-13','DD-Mon-yy'),4500);
INSERT INTO Incentives VALUES(2,To_Date('01-Jan-13','DD-Mon-yy'),3500);

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------



