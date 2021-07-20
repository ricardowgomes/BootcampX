-- SELECT assignments.day, count(assignments.*) as number_of_assignments, SUM(completed_at - started_at) AS duration
-- FROM assistance_requests
-- JOIN assignments ON assignments.id = assignment_id
-- GROUP BY assignments.day
-- ORDER BY day;

SELECT day, count(*) as number_of_assignments, sum(duration) as duration
FROM assignments
GROUP BY day
ORDER BY day;