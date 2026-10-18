BEGIN
DELETE FROM instructor_2022360011
WHERE id = 12345;
IF SQL%NOTFOUND THEN
DBMS_OUTPUT.PUT_LINE('Instructor not found');
ELSE
DBMS_OUTPUT.PUT_LINE('Instructor deleted successfully');
END IF;
END;

