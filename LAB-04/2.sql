DECLARE
V_NAME EMPLOYEE.NAME %TYPE;
V_SALARY EMPLOYEE.SALARY %TYPE;
V_Id Employee.emp_Id %Type;
V_cnt number;
CURSOR C_EMP IS SELECT * FROM EMPLOYEE;
BEGIN
OPEN C_emp;
Loop
Fetch C_emp Into V_Id, V_Name, V_Salary;
Exit when C_emp%Notfound;
IF V_Salary < 70000 THEN
UPDATE EMPLOYEE
SET SALARY = SALARY + 500
Where Emp_Id = V_Id;
V_cnt:= V_cnt + 1;
DBMS_OUTPUT.PUT_LINE('Update Success');
Else
DBMS_OUTPUT.PUT_LINE('Salary Not Updated');
END if;
END Loop;
DBMS_OUTPUT.PUT_LINE(V_cnt);
Close C_emp;
END;


/*
BEGIN
UPDATE EMPLOYEE
SET SALARY = SALARY + 300
WHERE  E_ID = 3;
IF SQL%FOUND THEN
DBMS_OUTPUT.PUT_LINE('Update Successful !');
ELSE
DBMS_OUTPUT.PUT_LINE('No Record !');
END IF;
END;

*/

