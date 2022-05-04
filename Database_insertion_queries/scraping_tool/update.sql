UPDATE Faculty set exams_difficulty = (SELECT (SUM(difficulty_rating) / COUNT(review_id)) AS 'total overall' FROM user_faculty_rev AS U WHERE U.faculty_id=1 GROUP BY 'total overall') WHERE faculty_id=1;

