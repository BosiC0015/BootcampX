SELECT assignments.id as id, assignments.name as name, assignments.day as day, assignments.chapter as chapter, COUNT(assistance_requests.*) as total_requests
FROM assignments
JOIN assistance_requests ON assistance_requests.assignment_id = assignments.id
GROUP BY assignments.id
ORDER BY COUNT(assistance_requests.*) DESC;