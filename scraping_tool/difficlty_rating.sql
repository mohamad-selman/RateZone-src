SELECT (SUM(difficulty_rating) / COUNT(review_id)) AS 'total overall' FROM user_faculty_rev AS U W
HERE U.faculty_id=5 GROUP BY 'total overall';
