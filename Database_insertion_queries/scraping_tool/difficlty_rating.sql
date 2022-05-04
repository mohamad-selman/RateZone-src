SELECT (SUM(difficulty_rating) / COUNT(review_id)) AS 'total overall' FROM user_faculty_rev AS U WHERE U.faculty_id=5 GROUP BY 'total overall';
