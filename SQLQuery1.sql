USE coursera_data;
GO

SELECT * FROM coursera_data

/* KPI Queries */
/* Total Courses */

SELECT COUNT(*) AS Total_Courses FROM coursera_data

/* Average Course Rating */

SELECT ROUND(AVG(rating), 2) AS Average_Rating FROM coursera_data WHERE rating IS NOT NULL

/* Most Reviewed Courses (Top 5) */

SELECT TOP 5 course, reviewcount FROM coursera_data ORDER BY reviewcount DESC

/* Courses by Level */

SELECT level, COUNT(*) AS Course_Count FROM coursera_data GROUP BY level ORDER BY Course_Count DESC

/* Courses with Credit Eligibility */

SELECT crediteligibility, COUNT(*) AS Course_Count FROM coursera_data GROUP BY crediteligibility

/* Top Certification Types */

SELECT certificatetype, COUNT(*) AS Certificate_Count FROM coursera_data GROUP BY certificatetype ORDER BY Certificate_Count DESC

/* Granular Queries */
/* Course Count by Partner */

SELECT partner, COUNT(*) AS Course_Count FROM coursera_data GROUP BY partner ORDER BY Course_Count DESC

/* Average Rating by Partner */

SELECT partner, ROUND(AVG(rating), 2) AS Avg_Rating FROM coursera_data WHERE rating IS NOT NULL GROUP BY partner ORDER BY Avg_Rating DESC

/* Top 10 Most Frequent Skills */

SELECT TOP 10 skills, COUNT(*) AS Frequency FROM coursera_data GROUP BY skills ORDER BY Frequency DESC
/* Courses by Duration */

SELECT duration, COUNT(*) AS Course_Count FROM coursera_data GROUP BY duration ORDER BY Course_Count DESC

/* Top Courses by Rating & Review Count */

SELECT TOP 10 course, rating, reviewcount FROM coursera_data WHERE rating IS NOT NULL AND reviewcount IS NOT NULL
ORDER BY rating DESC, reviewcount DESC