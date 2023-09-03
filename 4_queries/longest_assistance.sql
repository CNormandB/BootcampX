SELECT 
  cohorts.name,
  AVG(completed_at - started_at) AS average_assistance_time
FROM assistance_requests
JOIN students ON student_id = students.id
JOIN cohorts ON students.cohort_id = cohorts.id
GROUP BY cohorts.name
ORDER BY average_assistance_time DESC -- Use DESC to get the highest average time first
LIMIT 1 -- Limit to 1 row to get the cohort with the highest average time
