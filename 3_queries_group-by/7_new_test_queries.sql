-- get the total number of incomplete assignments for a specific student
-- SELECT count(assignments) - count(assignment_submissions)
-- WHERE students.name = 'Ibrahim Schimmel';

-- Get the total number of assignments
-- SELECT count(*)
-- FROM assignments;

-- Get the total number of in complete assignment submissions for a student
-- SELECT 424-count(assignment_submissions)
-- FROM assignment_submissions
-- JOIN students ON students.id = student_id
-- WHERE students.name = 'Ibrahim Schimmel';

-- A sub query is a ...
SELECT (
  SELECT count(assignments)
  FROM assignments
)-count(assignment_submissions) as total_incomplete
FROM assignment_submissions
JOIN students ON students.id = student_id
WHERE students.name = 'Ibrahim Schimmel';