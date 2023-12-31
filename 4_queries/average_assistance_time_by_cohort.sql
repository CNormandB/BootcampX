SELECT 
  cohorts.name,
  AVG(completed_at-started_at) as average_assistance_time
FROM assistance_requests
JOIN students on student_id = students.id
JOIN cohorts on students.cohort_id = cohorts.id
GROUP BY cohorts.name
ORDER BY average_assistance_time ASC;