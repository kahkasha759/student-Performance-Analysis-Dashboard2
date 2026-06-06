use [Neha sql];

select * from Student_Performance;

SELECT 
    student_id,
    AVG(math_score) AS avg_score 
FROM Student_Performance
GROUP BY student_id;

SELECT 
    student_id,
    gender,
    overall_score
FROM Student_Performance
ORDER BY overall_score DESC;

SELECT TOP 10 *
FROM Student_Performance
ORDER BY overall_score DESC;


SELECT 
    student_id,
    AVG(attendance_percentage) AS avg_attendance
FROM Student_Performance
GROUP BY student_id;

SELECT 
    CASE WHEN overall_score >= 40 THEN 'Pass' ELSE 'Fail' END AS result,
    COUNT(*) AS student_count
FROM Student_Performance
GROUP BY CASE WHEN overall_score >= 40 THEN 'Pass' ELSE 'Fail' END;

SELECT 
    gender,
    AVG(overall_score) AS avg_score
FROM Student_Performance
GROUP BY gender;

SELECT MAX(overall_score) AS highest_score,
       MIN(overall_score) AS lowest_score
FROM Student_Performance;

SELECT 
    CASE 
        WHEN attendance_percentage >= 90 THEN 'High Attendance'
        WHEN attendance_percentage BETWEEN 75 AND 89 THEN 'Medium Attendance'
        ELSE 'Low Attendance'
    END AS attendance_group,
    COUNT(*) AS student_count
FROM Student_Performance
GROUP BY 
    CASE 
        WHEN attendance_percentage >= 90 THEN 'High Attendance'
        WHEN attendance_percentage BETWEEN 75 AND 89 THEN 'Medium Attendance'
        ELSE 'Low Attendance'
    END;
