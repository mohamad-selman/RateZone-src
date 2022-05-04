
ALTER TABLE Department ADD COLUMN adminstrative_support FLOAT(30);

ALTER TABLE Department MODIFY overall_rating FLOAT(30);






ALTER TABLE Faculty ADD COLUMN overall_rating FLOAT(30);
ALTER TABLE Faculty ADD COLUMN teaching_quality FLOAT(30);
ALTER TABLE Faculty ADD COLUMN exams_difficulty FLOAT(30);

ALTER TABLE Course ADD COLUMN overall_rating FLOAT(30);
ALTER TABLE Course ADD COLUMN effort_required FLOAT(30);
ALTER TABLE Course ADD COLUMN enjoyment_rating FLOAT(30);

ALTER TABLE user_course_rev ADD COLUMN effort_required INTEGER(30);
ALTER TABLE user_course_rev MODIFY student_thoughts VARCHAR(500) NULL; 

ALTER TABLE user_faculty_rev MODIFY overall_rating INTEGER(30) NOT NULL DEFAULT '1';
ALTER TABLE user_faculty_rev MODIFY difficulty_rating INTEGER(30) NOT NULL DEFAULT '1';
ALTER TABLE user_faculty_rev MODIFY teaching_quality INTEGER(30) NOT NULL DEFAULT '1';

ALTER TABLE user_course_rev MODIFY c_code INTEGER(30) NULL;
ALTER TABLE user_faculty_rev MODIFY c_code INTEGER(30) NULL;


ALTER TABLE user_course_rev MODIFY overall_rating INTEGER(30) NOT NULL DEFAULT '1';
ALTER TABLE user_course_rev MODIFY effort_required INTEGER(30) NOT NULL DEFAULT '1';
ALTER TABLE user_course_rev MODIFY enjoyment_rating INTEGER(30) NOT NULL DEFAULT '1';
ALTER TABLE user_course_rev MODIFY semester_period VARCHAR(50) NULL DEFAULT ' ';


