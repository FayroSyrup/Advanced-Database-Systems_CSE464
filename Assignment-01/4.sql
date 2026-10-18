
DECLARE
v_id instructor_2022360011.id%TYPE;
v_name instructor_2022360011.name%TYPE;
v_dept instructor_2022360011.dept_name%TYPE;
v_salary instructor_2022360011.salary%TYPE;
CURSOR c_instructor IS
SELECT id, name, dept_name, salary
FROM instructor_2022360011;
BEGIN
OPEN c_instructor;
LOOP
FETCH c_instructor
INTO v_id, v_name, v_dept, v_salary;
EXIT WHEN c_instructor%NOTFOUND;
DBMS_OUTPUT.PUT_LINE('ID: ' || v_id ||', Name: ' || v_name ||', Department: ' || v_dept ||', Salary: ' || v_salary);
END LOOP;
DBMS_OUTPUT.PUT_LINE('Total rows fetched: ' || c_instructor%ROWCOUNT);
CLOSE c_instructor;
END;
