UPDATE Employee set overall_rating = (SELECT (SUM(overall_rating) / COUNT(review)) AS 'total overall' FROM user_faculty_rev AS U WHERE U.employee_id=1 GROUP BY 'total overall') WHERE employee=1;
UPDATE Employee set teaching_quality = (SELECT (SUM(teaching_quality) / COUNT(review)) AS 'total overall' FROM user_faculty_rev AS U WHERE U.employee_id=1 GROUP BY 'total overall') WHERE employee=1;
UPDATE Employee set exams_difficulty = (SELECT (SUM(difficulty_rating) / COUNT(review)) AS 'total overall' FROM user_faculty_rev AS U WHERE U.employee_id=1 GROUP BY 'total overall') WHERE employee=1;

UPDATE Employee set overall_rating = (SELECT (SUM(overall_rating) / COUNT(review)) AS 'total overall' FROM user_faculty_rev AS U WHERE U.employee_id=5 GROUP BY 'total overall') WHERE employee=5;
UPDATE Employee set teaching_quality = (SELECT (SUM(teaching_quality) / COUNT(review)) AS 'total overall' FROM user_faculty_rev AS U WHERE U.employee_id=5 GROUP BY 'total overall') WHERE employee=5;
UPDATE Employee set exams_difficulty = (SELECT (SUM(difficulty_rating) / COUNT(review)) AS 'total overall' FROM user_faculty_rev AS U WHERE U.employee_id=5 GROUP BY 'total overall') WHERE employee=5;

UPDATE Employee set overall_rating = (SELECT (SUM(overall_rating) / COUNT(review)) AS 'total overall' FROM user_faculty_rev AS U WHERE U.employee_id=6 GROUP BY 'total overall') WHERE employee=6;
UPDATE Employee set teaching_quality = (SELECT (SUM(teaching_quality) / COUNT(review)) AS 'total overall' FROM user_faculty_rev AS U WHERE U.employee_id=6 GROUP BY 'total overall') WHERE employee=6;
UPDATE Employee set exams_difficulty = (SELECT (SUM(difficulty_rating) / COUNT(review)) AS 'total overall' FROM user_faculty_rev AS U WHERE U.employee_id=6 GROUP BY 'total overall') WHERE employee=6;

UPDATE Employee set overall_rating = (SELECT (SUM(overall_rating) / COUNT(review)) AS 'total overall' FROM user_faculty_rev AS U WHERE U.employee_id=7 GROUP BY 'total overall') WHERE employee=7;
UPDATE Employee set teaching_quality = (SELECT (SUM(teaching_quality) / COUNT(review)) AS 'total overall' FROM user_faculty_rev AS U WHERE U.employee_id=7 GROUP BY 'total overall') WHERE employee=7;
UPDATE Employee set exams_difficulty = (SELECT (SUM(difficulty_rating) / COUNT(review)) AS 'total overall' FROM user_faculty_rev AS U WHERE U.employee_id=7 GROUP BY 'total overall') WHERE employee=7;

UPDATE Employee set overall_rating = (SELECT (SUM(overall_rating) / COUNT(review)) AS 'total overall' FROM user_faculty_rev AS U WHERE U.employee_id=8 GROUP BY 'total overall') WHERE employee=8;
UPDATE Employee set teaching_quality = (SELECT (SUM(teaching_quality) / COUNT(review)) AS 'total overall' FROM user_faculty_rev AS U WHERE U.employee_id=8 GROUP BY 'total overall') WHERE employee=8;
UPDATE Employee set exams_difficulty = (SELECT (SUM(difficulty_rating) / COUNT(review)) AS 'total overall' FROM user_faculty_rev AS U WHERE U.employee_id=8 GROUP BY 'total overall') WHERE employee=8;

UPDATE Employee set overall_rating = (SELECT (SUM(overall_rating) / COUNT(review)) AS 'total overall' FROM user_faculty_rev AS U WHERE U.employee_id=9 GROUP BY 'total overall') WHERE employee=9;
UPDATE Employee set teaching_quality = (SELECT (SUM(teaching_quality) / COUNT(review)) AS 'total overall' FROM user_faculty_rev AS U WHERE U.employee_id=9 GROUP BY 'total overall') WHERE employee=9;
UPDATE Employee set exams_difficulty = (SELECT (SUM(difficulty_rating) / COUNT(review)) AS 'total overall' FROM user_faculty_rev AS U WHERE U.employee_id=9 GROUP BY 'total overall') WHERE employee=9;

UPDATE Employee set overall_rating = (SELECT (SUM(overall_rating) / COUNT(review)) AS 'total overall' FROM user_faculty_rev AS U WHERE U.employee_id=10 GROUP BY 'total overall') WHERE employee=10;
UPDATE Employee set teaching_quality = (SELECT (SUM(teaching_quality) / COUNT(review)) AS 'total overall' FROM user_faculty_rev AS U WHERE U.employee_id=10 GROUP BY 'total overall') WHERE employee=10;
UPDATE Employee set exams_difficulty = (SELECT (SUM(difficulty_rating) / COUNT(review)) AS 'total overall' FROM user_faculty_rev AS U WHERE U.employee_id=10 GROUP BY 'total overall') WHERE employee=10;

UPDATE Employee set overall_rating = (SELECT (SUM(overall_rating) / COUNT(review)) AS 'total overall' FROM user_faculty_rev AS U WHERE U.employee_id=11 GROUP BY 'total overall') WHERE employee=11;
UPDATE Employee set teaching_quality = (SELECT (SUM(teaching_quality) / COUNT(review)) AS 'total overall' FROM user_faculty_rev AS U WHERE U.employee_id=11 GROUP BY 'total overall') WHERE employee=11;
UPDATE Employee set exams_difficulty = (SELECT (SUM(difficulty_rating) / COUNT(review)) AS 'total overall' FROM user_faculty_rev AS U WHERE U.employee_id=11 GROUP BY 'total overall') WHERE employee=11;

UPDATE Employee set overall_rating = (SELECT (SUM(overall_rating) / COUNT(review)) AS 'total overall' FROM user_faculty_rev AS U WHERE U.employee_id=12 GROUP BY 'total overall') WHERE employee=12;
UPDATE Employee set teaching_quality = (SELECT (SUM(teaching_quality) / COUNT(review)) AS 'total overall' FROM user_faculty_rev AS U WHERE U.employee_id=12 GROUP BY 'total overall') WHERE employee=12;
UPDATE Employee set exams_difficulty = (SELECT (SUM(difficulty_rating) / COUNT(review)) AS 'total overall' FROM user_faculty_rev AS U WHERE U.employee_id=12 GROUP BY 'total overall') WHERE employee=12;

UPDATE Employee set overall_rating = (SELECT (SUM(overall_rating) / COUNT(review)) AS 'total overall' FROM user_faculty_rev AS U WHERE U.employee_id=13 GROUP BY 'total overall') WHERE employee=13;
UPDATE Employee set teaching_quality = (SELECT (SUM(teaching_quality) / COUNT(review)) AS 'total overall' FROM user_faculty_rev AS U WHERE U.employee_id=13 GROUP BY 'total overall') WHERE employee=13;
UPDATE Employee set exams_difficulty = (SELECT (SUM(difficulty_rating) / COUNT(review)) AS 'total overall' FROM user_faculty_rev AS U WHERE U.employee_id=13 GROUP BY 'total overall') WHERE employee=13;

UPDATE Employee set overall_rating = (SELECT (SUM(overall_rating) / COUNT(review)) AS 'total overall' FROM user_faculty_rev AS U WHERE U.employee_id=14 GROUP BY 'total overall') WHERE employee=14;
UPDATE Employee set teaching_quality = (SELECT (SUM(teaching_quality) / COUNT(review)) AS 'total overall' FROM user_faculty_rev AS U WHERE U.employee_id=14 GROUP BY 'total overall') WHERE employee=14;
UPDATE Employee set exams_difficulty = (SELECT (SUM(difficulty_rating) / COUNT(review)) AS 'total overall' FROM user_faculty_rev AS U WHERE U.employee_id=14 GROUP BY 'total overall') WHERE employee=14;

UPDATE Employee set overall_rating = (SELECT (SUM(overall_rating) / COUNT(review)) AS 'total overall' FROM user_faculty_rev AS U WHERE U.employee_id=15 GROUP BY 'total overall') WHERE employee=15;
UPDATE Employee set teaching_quality = (SELECT (SUM(teaching_quality) / COUNT(review)) AS 'total overall' FROM user_faculty_rev AS U WHERE U.employee_id=15 GROUP BY 'total overall') WHERE employee=15;
UPDATE Employee set exams_difficulty = (SELECT (SUM(difficulty_rating) / COUNT(review)) AS 'total overall' FROM user_faculty_rev AS U WHERE U.employee_id=15 GROUP BY 'total overall') WHERE employee=15;


UPDATE Employee set overall_rating = (SELECT (SUM(overall_rating) / COUNT(review)) AS 'total overall' FROM user_faculty_rev AS U WHERE U.employee_id=17 GROUP BY 'total overall') WHERE employee=17;
UPDATE Employee set teaching_quality = (SELECT (SUM(teaching_quality) / COUNT(review)) AS 'total overall' FROM user_faculty_rev AS U WHERE U.employee_id=17 GROUP BY 'total overall') WHERE employee=17;
UPDATE Employee set exams_difficulty = (SELECT (SUM(difficulty_rating) / COUNT(review)) AS 'total overall' FROM user_faculty_rev AS U WHERE U.employee_id=17 GROUP BY 'total overall') WHERE employee=17;

UPDATE Employee set overall_rating = (SELECT (SUM(overall_rating) / COUNT(review)) AS 'total overall' FROM user_faculty_rev AS U WHERE U.employee_id=18 GROUP BY 'total overall') WHERE employee=18;
UPDATE Employee set teaching_quality = (SELECT (SUM(teaching_quality) / COUNT(review)) AS 'total overall' FROM user_faculty_rev AS U WHERE U.employee_id=18 GROUP BY 'total overall') WHERE employee=18;
UPDATE Employee set exams_difficulty = (SELECT (SUM(difficulty_rating) / COUNT(review)) AS 'total overall' FROM user_faculty_rev AS U WHERE U.employee_id=18 GROUP BY 'total overall') WHERE employee=18;

UPDATE Employee set overall_rating = (SELECT (SUM(overall_rating) / COUNT(review)) AS 'total overall' FROM user_faculty_rev AS U WHERE U.employee_id=19 GROUP BY 'total overall') WHERE employee=19;
UPDATE Employee set teaching_quality = (SELECT (SUM(teaching_quality) / COUNT(review)) AS 'total overall' FROM user_faculty_rev AS U WHERE U.employee_id=19 GROUP BY 'total overall') WHERE employee=19;
UPDATE Employee set exams_difficulty = (SELECT (SUM(difficulty_rating) / COUNT(review)) AS 'total overall' FROM user_faculty_rev AS U WHERE U.employee_id=19 GROUP BY 'total overall') WHERE employee=19;


UPDATE Employee set overall_rating = (SELECT (SUM(overall_rating) / COUNT(review)) AS 'total overall' FROM user_faculty_rev AS U WHERE U.employee_id=22 GROUP BY 'total overall') WHERE employee=22;
UPDATE Employee set teaching_quality = (SELECT (SUM(teaching_quality) / COUNT(review)) AS 'total overall' FROM user_faculty_rev AS U WHERE U.employee_id=22 GROUP BY 'total overall') WHERE employee=22;
UPDATE Employee set exams_difficulty = (SELECT (SUM(difficulty_rating) / COUNT(review)) AS 'total overall' FROM user_faculty_rev AS U WHERE U.employee_id=22 GROUP BY 'total overall') WHERE employee=22;

