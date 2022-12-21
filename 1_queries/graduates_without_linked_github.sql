SELECT name, email, phone
FROM students
WHERE github iS NULL
AND end_date IS NOT NULL;