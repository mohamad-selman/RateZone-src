UPDATE Faculty set overall_rating = (SELECT (SUM(overall_rating) / COUNT(review_id)) AS 'total overall' FROM user_faculty_rev AS U WHERE U.faculty_id=1 GROUP BY 'total overall') WHERE faculty_id=1;
UPDATE Faculty set teaching_quality = (SELECT (SUM(teaching_quality) / COUNT(review_id)) AS 'total overall' FROM user_faculty_rev AS U WHERE U.faculty_id=1 GROUP BY 'total overall') WHERE faculty_id=1;
UPDATE Faculty set exams_difficulty = (SELECT (SUM(difficulty_rating) / COUNT(review_id)) AS 'total overall' FROM user_faculty_rev AS U WHERE U.faculty_id=1 GROUP BY 'total overall') WHERE faculty_id=1;

UPDATE Faculty set overall_rating = (SELECT (SUM(overall_rating) / COUNT(review_id)) AS 'total overall' FROM user_faculty_rev AS U WHERE U.faculty_id=5 GROUP BY 'total overall') WHERE faculty_id=5;
UPDATE Faculty set teaching_quality = (SELECT (SUM(teaching_quality) / COUNT(review_id)) AS 'total overall' FROM user_faculty_rev AS U WHERE U.faculty_id=5 GROUP BY 'total overall') WHERE faculty_id=5;
UPDATE Faculty set exams_difficulty = (SELECT (SUM(difficulty_rating) / COUNT(review_id)) AS 'total overall' FROM user_faculty_rev AS U WHERE U.faculty_id=5 GROUP BY 'total overall') WHERE faculty_id=5;

UPDATE Faculty set overall_rating = (SELECT (SUM(overall_rating) / COUNT(review_id)) AS 'total overall' FROM user_faculty_rev AS U WHERE U.faculty_id=6 GROUP BY 'total overall') WHERE faculty_id=6;
UPDATE Faculty set teaching_quality = (SELECT (SUM(teaching_quality) / COUNT(review_id)) AS 'total overall' FROM user_faculty_rev AS U WHERE U.faculty_id=6 GROUP BY 'total overall') WHERE faculty_id=6;
UPDATE Faculty set exams_difficulty = (SELECT (SUM(difficulty_rating) / COUNT(review_id)) AS 'total overall' FROM user_faculty_rev AS U WHERE U.faculty_id=6 GROUP BY 'total overall') WHERE faculty_id=6;

UPDATE Faculty set overall_rating = (SELECT (SUM(overall_rating) / COUNT(review_id)) AS 'total overall' FROM user_faculty_rev AS U WHERE U.faculty_id=7 GROUP BY 'total overall') WHERE faculty_id=7;
UPDATE Faculty set teaching_quality = (SELECT (SUM(teaching_quality) / COUNT(review_id)) AS 'total overall' FROM user_faculty_rev AS U WHERE U.faculty_id=7 GROUP BY 'total overall') WHERE faculty_id=7;
UPDATE Faculty set exams_difficulty = (SELECT (SUM(difficulty_rating) / COUNT(review_id)) AS 'total overall' FROM user_faculty_rev AS U WHERE U.faculty_id=7 GROUP BY 'total overall') WHERE faculty_id=7;

UPDATE Faculty set overall_rating = (SELECT (SUM(overall_rating) / COUNT(review_id)) AS 'total overall' FROM user_faculty_rev AS U WHERE U.faculty_id=8 GROUP BY 'total overall') WHERE faculty_id=8;
UPDATE Faculty set teaching_quality = (SELECT (SUM(teaching_quality) / COUNT(review_id)) AS 'total overall' FROM user_faculty_rev AS U WHERE U.faculty_id=8 GROUP BY 'total overall') WHERE faculty_id=8;
UPDATE Faculty set exams_difficulty = (SELECT (SUM(difficulty_rating) / COUNT(review_id)) AS 'total overall' FROM user_faculty_rev AS U WHERE U.faculty_id=8 GROUP BY 'total overall') WHERE faculty_id=8;

UPDATE Faculty set overall_rating = (SELECT (SUM(overall_rating) / COUNT(review_id)) AS 'total overall' FROM user_faculty_rev AS U WHERE U.faculty_id=9 GROUP BY 'total overall') WHERE faculty_id=9;
UPDATE Faculty set teaching_quality = (SELECT (SUM(teaching_quality) / COUNT(review_id)) AS 'total overall' FROM user_faculty_rev AS U WHERE U.faculty_id=9 GROUP BY 'total overall') WHERE faculty_id=9;
UPDATE Faculty set exams_difficulty = (SELECT (SUM(difficulty_rating) / COUNT(review_id)) AS 'total overall' FROM user_faculty_rev AS U WHERE U.faculty_id=9 GROUP BY 'total overall') WHERE faculty_id=9;

UPDATE Faculty set overall_rating = (SELECT (SUM(overall_rating) / COUNT(review_id)) AS 'total overall' FROM user_faculty_rev AS U WHERE U.faculty_id=10 GROUP BY 'total overall') WHERE faculty_id=10;
UPDATE Faculty set teaching_quality = (SELECT (SUM(teaching_quality) / COUNT(review_id)) AS 'total overall' FROM user_faculty_rev AS U WHERE U.faculty_id=10 GROUP BY 'total overall') WHERE faculty_id=10;
UPDATE Faculty set exams_difficulty = (SELECT (SUM(difficulty_rating) / COUNT(review_id)) AS 'total overall' FROM user_faculty_rev AS U WHERE U.faculty_id=10 GROUP BY 'total overall') WHERE faculty_id=10;

UPDATE Faculty set overall_rating = (SELECT (SUM(overall_rating) / COUNT(review_id)) AS 'total overall' FROM user_faculty_rev AS U WHERE U.faculty_id=11 GROUP BY 'total overall') WHERE faculty_id=11;
UPDATE Faculty set teaching_quality = (SELECT (SUM(teaching_quality) / COUNT(review_id)) AS 'total overall' FROM user_faculty_rev AS U WHERE U.faculty_id=11 GROUP BY 'total overall') WHERE faculty_id=11;
UPDATE Faculty set exams_difficulty = (SELECT (SUM(difficulty_rating) / COUNT(review_id)) AS 'total overall' FROM user_faculty_rev AS U WHERE U.faculty_id=11 GROUP BY 'total overall') WHERE faculty_id=11;

UPDATE Faculty set overall_rating = (SELECT (SUM(overall_rating) / COUNT(review_id)) AS 'total overall' FROM user_faculty_rev AS U WHERE U.faculty_id=12 GROUP BY 'total overall') WHERE faculty_id=12;
UPDATE Faculty set teaching_quality = (SELECT (SUM(teaching_quality) / COUNT(review_id)) AS 'total overall' FROM user_faculty_rev AS U WHERE U.faculty_id=12 GROUP BY 'total overall') WHERE faculty_id=12;
UPDATE Faculty set exams_difficulty = (SELECT (SUM(difficulty_rating) / COUNT(review_id)) AS 'total overall' FROM user_faculty_rev AS U WHERE U.faculty_id=12 GROUP BY 'total overall') WHERE faculty_id=12;

UPDATE Faculty set overall_rating = (SELECT (SUM(overall_rating) / COUNT(review_id)) AS 'total overall' FROM user_faculty_rev AS U WHERE U.faculty_id=13 GROUP BY 'total overall') WHERE faculty_id=13;
UPDATE Faculty set teaching_quality = (SELECT (SUM(teaching_quality) / COUNT(review_id)) AS 'total overall' FROM user_faculty_rev AS U WHERE U.faculty_id=13 GROUP BY 'total overall') WHERE faculty_id=13;
UPDATE Faculty set exams_difficulty = (SELECT (SUM(difficulty_rating) / COUNT(review_id)) AS 'total overall' FROM user_faculty_rev AS U WHERE U.faculty_id=13 GROUP BY 'total overall') WHERE faculty_id=13;

UPDATE Faculty set overall_rating = (SELECT (SUM(overall_rating) / COUNT(review_id)) AS 'total overall' FROM user_faculty_rev AS U WHERE U.faculty_id=14 GROUP BY 'total overall') WHERE faculty_id=14;
UPDATE Faculty set teaching_quality = (SELECT (SUM(teaching_quality) / COUNT(review_id)) AS 'total overall' FROM user_faculty_rev AS U WHERE U.faculty_id=14 GROUP BY 'total overall') WHERE faculty_id=14;
UPDATE Faculty set exams_difficulty = (SELECT (SUM(difficulty_rating) / COUNT(review_id)) AS 'total overall' FROM user_faculty_rev AS U WHERE U.faculty_id=14 GROUP BY 'total overall') WHERE faculty_id=14;

UPDATE Faculty set overall_rating = (SELECT (SUM(overall_rating) / COUNT(review_id)) AS 'total overall' FROM user_faculty_rev AS U WHERE U.faculty_id=15 GROUP BY 'total overall') WHERE faculty_id=15;
UPDATE Faculty set teaching_quality = (SELECT (SUM(teaching_quality) / COUNT(review_id)) AS 'total overall' FROM user_faculty_rev AS U WHERE U.faculty_id=15 GROUP BY 'total overall') WHERE faculty_id=15;
UPDATE Faculty set exams_difficulty = (SELECT (SUM(difficulty_rating) / COUNT(review_id)) AS 'total overall' FROM user_faculty_rev AS U WHERE U.faculty_id=15 GROUP BY 'total overall') WHERE faculty_id=15;


UPDATE Faculty set overall_rating = (SELECT (SUM(overall_rating) / COUNT(review_id)) AS 'total overall' FROM user_faculty_rev AS U WHERE U.faculty_id=17 GROUP BY 'total overall') WHERE faculty_id=17;
UPDATE Faculty set teaching_quality = (SELECT (SUM(teaching_quality) / COUNT(review_id)) AS 'total overall' FROM user_faculty_rev AS U WHERE U.faculty_id=17 GROUP BY 'total overall') WHERE faculty_id=17;
UPDATE Faculty set exams_difficulty = (SELECT (SUM(difficulty_rating) / COUNT(review_id)) AS 'total overall' FROM user_faculty_rev AS U WHERE U.faculty_id=17 GROUP BY 'total overall') WHERE faculty_id=17;

UPDATE Faculty set overall_rating = (SELECT (SUM(overall_rating) / COUNT(review_id)) AS 'total overall' FROM user_faculty_rev AS U WHERE U.faculty_id=18 GROUP BY 'total overall') WHERE faculty_id=18;
UPDATE Faculty set teaching_quality = (SELECT (SUM(teaching_quality) / COUNT(review_id)) AS 'total overall' FROM user_faculty_rev AS U WHERE U.faculty_id=18 GROUP BY 'total overall') WHERE faculty_id=18;
UPDATE Faculty set exams_difficulty = (SELECT (SUM(difficulty_rating) / COUNT(review_id)) AS 'total overall' FROM user_faculty_rev AS U WHERE U.faculty_id=18 GROUP BY 'total overall') WHERE faculty_id=18;

UPDATE Faculty set overall_rating = (SELECT (SUM(overall_rating) / COUNT(review_id)) AS 'total overall' FROM user_faculty_rev AS U WHERE U.faculty_id=19 GROUP BY 'total overall') WHERE faculty_id=19;
UPDATE Faculty set teaching_quality = (SELECT (SUM(teaching_quality) / COUNT(review_id)) AS 'total overall' FROM user_faculty_rev AS U WHERE U.faculty_id=19 GROUP BY 'total overall') WHERE faculty_id=19;
UPDATE Faculty set exams_difficulty = (SELECT (SUM(difficulty_rating) / COUNT(review_id)) AS 'total overall' FROM user_faculty_rev AS U WHERE U.faculty_id=19 GROUP BY 'total overall') WHERE faculty_id=19;


UPDATE Faculty set overall_rating = (SELECT (SUM(overall_rating) / COUNT(review_id)) AS 'total overall' FROM user_faculty_rev AS U WHERE U.faculty_id=22 GROUP BY 'total overall') WHERE faculty_id=22;
UPDATE Faculty set teaching_quality = (SELECT (SUM(teaching_quality) / COUNT(review_id)) AS 'total overall' FROM user_faculty_rev AS U WHERE U.faculty_id=22 GROUP BY 'total overall') WHERE faculty_id=22;
UPDATE Faculty set exams_difficulty = (SELECT (SUM(difficulty_rating) / COUNT(review_id)) AS 'total overall' FROM user_faculty_rev AS U WHERE U.faculty_id=22 GROUP BY 'total overall') WHERE faculty_id=22;

