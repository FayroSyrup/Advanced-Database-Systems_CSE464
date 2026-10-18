DECLARE
v_id instructor_2022360011.id%TYPE;
v_salary instructor_2022360011.salary%TYPE;
v_count NUMBER := 0;
CURSOR c_instructor IS
SELECT id, salary
FROM instructor_2022360011
WHERE salary < 60000;
BEGIN
OPEN c_instructor;
LOOP
FETCH c_instructor INTO v_id, v_salary;
EXIT WHEN c_instructor%NOTFOUND;
UPDATE instructor_2022360011
SET salary = salary + 1000
WHERE id = v_id;
IF SQL%FOUND THEN
v_count := v_count + 1;
DBMS_OUTPUT.PUT_LINE('Salary updated for ID: ' || v_id);
END IF;
END LOOP;
CLOSE c_instructor;
DBMS_OUTPUT.PUT_LINE('Total instructors updated: ' || v_count);
END;

