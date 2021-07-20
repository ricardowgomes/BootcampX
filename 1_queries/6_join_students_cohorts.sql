SELECT students.name as student_name, email, cohorts.name as cohort_name
FROM cohorts JOIN students ON cohort_id = cohorts.id;

-- IT WOULD WORK THE SAME WAY

-- SELECT students.name as student_name, email, cohorts.name as cohort_name
-- FROM students INNER JOIN cohorts ON cohorts.id = cohort_id;

-- If the foreign key is NULL, the row will not be included in the result of an INNER JOIN.