SELECT students.name as student, AVG(assignment_submissions.duration) AS average_assignment_duration
FROM students
-- FORM assignment_submissions
JOIN assignment_submissions ON students.id = student_id
WHERE students.end_date IS NULL
GROUP BY students.name
ORDER BY student;