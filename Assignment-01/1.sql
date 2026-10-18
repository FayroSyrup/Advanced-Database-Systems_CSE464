
BEGIN
UPDATE instructor_2022360011
SET salary = salary + 500
WHERE id = 15151;
DBMS_OUTPUT.PUT_LINE('Rows updated: ' || SQL%ROWCOUNT);
END;
