
DECLARE
v_name instructor_2022360011.name%TYPE;
v_salary instructor_2022360011.salary%TYPE;
BEGIN
SELECT name, salary
INTO v_name, v_salary
FROM instructor_2022360011
WHERE id = 22222;
DBMS_OUTPUT.PUT_LINE('Name: ' || v_name ||', Salary: ' || v_salary);
END;
