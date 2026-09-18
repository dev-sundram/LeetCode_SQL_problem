# Write your MySQL query statement below
-- SELECT s.student_id , s.student_name, e.subject_name , count(*)as attend_exams
-- FROM Students s JOIN  Examinations e on s.student_id = e.student_id 
-- -- JOIN Subject sb ON sb.subject_name = e.subject_name 
-- GROUP BY e.subject_name  ,s.student_id
-- ORDER BY s.student_id ASC

SELECT s.student_id , s.student_name, SU.subject_name , count(e.student_id)as attended_exams
FROM Students s 
CROSS JOIN Subjects SU 
LEFT JOIN  Examinations e on s.student_id = e.student_id AND SU.subject_name = E.subject_name
GROUP BY s.student_id , s.student_name , SU.subject_name
ORDER BY s.student_id , s.student_name, SU.subject_name