SELECT cohorts.name as cohorts_name, count(cohort_id) as student_count from students join cohorts on students.cohort_id=cohorts.id group by cohorts.name
HAVING COUNT(cohort_id)> 17
ORDER BY student_count ASC;


/*theirs*/
/*SELECT cohorts.name as cohort_name, count(students.*) AS student_count 
FROM cohorts
JOIN students ON cohorts.id = cohort_id
GROUP BY cohort_name 
HAVING count(students.*) >= 18
ORDER BY student_count;*/