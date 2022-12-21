SELECT name, id, cohort_id
FROM students
WHERE end_date iS NULL
ORDER BY cohort_id;  