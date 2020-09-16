SELECT teachers.name as teacher, cohorts.name as cohort, COUNT(assistance_requests) as total_assistances
FROM assistance_requests 
JOIN teachers ON teachers.id = teacher_id
JOIN students ON students.id = assistance_requests.student_id
JOIN cohorts ON cohorts.id = cohort_id
WHERE cohorts.name = 'JUL02'
GROUP BY teachers.name, cohorts.name
ORDER BY teachers.name; 
