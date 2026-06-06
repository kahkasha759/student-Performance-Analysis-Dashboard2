# student-Performance-Analysis-Dashboard2
The Student Performance Analysis System is a PHP‑based web application designed to analyze and visualize student academic performance. It integrates Excel data processing, MySQL database storage, and interactive reporting to help educators and students track progress, identify strengths, and highlight areas needing improvement.
1 Data Input
Collect student records through Excel/CSV uploads.
Teachers prepare Excel sheets with student details
Upload via import_excel.php using PhpSpreadsheet

2 Data Storage
Store structured records in MySQL database.
Tables: students, attendance_records, performance_data
Connection handled by db_connect.php

3 Data Processing
Analyze attendance, grades, study hours, and activities.
analyze.php evaluates performance metrics
Apply logic to identify strengths and weaknesses

4 Report Generation
Generate tabular and graphical reports.
report.php creates structured tables
Chart.js visualizes trends in grades and attendance

5 Student Dashboard
Provide personalized insights to each student.
student.php displays grades, attendance, and feedback
Integrates charts and notifications

6Output & Export
Deliver results in multiple formats.
Interactive dashboards for visualization
Export reports as PDF/Excel for sharing
