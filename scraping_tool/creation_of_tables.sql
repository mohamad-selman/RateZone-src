SELECT * FROM auth_user;

ALTER TABLE auth_user ADD COLUMN user_level INTEGER(5) NOT NULL DEFAULT 0;

ALTER TABLE auth_user ADD COLUMN discarded_rev_count INTEGER(15) NOT NULL DEFAULT 0;

CREATE TABLE User (
  user_id INTEGER(15) NOT NULL AUTO_INCREMENT,
  email VARCHAR(50) NOT NULL,
  passw VARCHAR(50) NOT NULL,
  fname VARCHAR(50) NOT NULL,
  lname VARCHAR(50) NOT NULL,
  user_level INTEGER(5) NOT NULL DEFAULT 0,
  discarded_rev_count INTEGER(15) NOT NULL DEFAULT 0,
  
  CONSTRAINT user_uid_PK 
  	PRIMARY KEY (user_id),
  
  CONSTRAINT user_email_UK 
    UNIQUE (email)
  
  );


CREATE TABLE Department (
  dept_code INTEGER(30) NOT NULL,
  dept_name VARCHAR(50) NOT NULL, 
  overall_rating INTEGER(5) NOT NULL DEFAULT 0,
  
  CONSTRAINT dept_dCode_PK
  	PRIMARY KEY (dept_code)
  
  );


CREATE TABLE Faculty (
  faculty_id INTEGER(30) NOT NULL AUTO_INCREMENT,
  dept_code INTEGER(30) NOT NULL,
  years_of_exp INTEGER(10) NOT NULL DEFAULT 0,
  fname VARCHAR(50) NOT NULL,
  lname VARCHAR(50) NOT NULL,
  
  CONSTRAINT faculty_fid_PK
  	PRIMARY KEY (faculty_id),
  
  CONSTRAINT faculty_deptCode_FK
  	FOREIGN KEY (dept_code)
  	REFERENCES Department(dept_code)
  
  
  );



CREATE TABLE Professor (
  faculty_id INTEGER(30) NOT NULL AUTO_INCREMENT,
  phd_from VARCHAR(50) NOT NULL,
  prof_rank VARCHAR(50) NOT NULL,
  research_area VARCHAR(50) NOT NULL,
  
  CONSTRAINT prof_fid_FK
  	FOREIGN KEY (faculty_id)
  	REFERENCES Faculty(faculty_id)
  
  );



CREATE TABLE Teaching_Assistant (
  faculty_id INTEGER(15) NOT NULL AUTO_INCREMENT,
  masters_from VARCHAR(50) NOT NULL,
  
  CONSTRAINT TA_fid_FK
  	FOREIGN KEY (faculty_id)
  	REFERENCES Faculty(faculty_id)
  
  
  );


CREATE TABLE Course (
  course_code INTEGER(15) NOT NULL,
  course_name VARCHAR(50) NOT NULL,
  
  CONSTRAINT course_cCode_PK
  	PRIMARY KEY (course_code)
  
  
  );



CREATE TABLE user_faculty_rev (
  faculty_id INTEGER(30) NOT NULL,
  review_id INTEGER(30) NOT NULL AUTO_INCREMENT,
  uid INTEGER(30) NOT NULL,
  c_code INTEGER(30) NOT NULL,
  overall_rating INTEGER(5) NOT NULL DEFAULT 0,
  difficulty_rating INTEGER(5) NOT NULL DEFAULT 0,
  upvotes INTEGER(30) NOT NULL DEFAULT 0,
  downvotes INTEGER(30) NOT NULL DEFAULT 0,
  report_count INTEGER(30) NOT NULL DEFAULT 0,
  semester_period VARCHAR(50) NOT NULL DEFAULT '',
  student_thoughts VARCHAR(255) NOT NULL DEFAULT '',
  teaching_quality INTEGER(5) NOT NULL DEFAULT 0,
  
  CONSTRAINT userFaculty_fid_FK 
  	FOREIGN KEY (faculty_id)
  	REFERENCES Faculty(faculty_id),
  
  CONSTRAINT userFaculty_rid_PK 
  	PRIMARY KEY (review_id),
  
  CONSTRAINT userFaculty_uid_FK 
  	FOREIGN KEY (uid)
  	REFERENCES auth_user(id),
  
  CONSTRAINT userFaculty_cid_FK
  	FOREIGN KEY (c_code)
  	REFERENCES Course(course_code)
  
  );


CREATE TABLE user_course_rev (
  faculty_id INTEGER(30) NOT NULL,
  review_id INTEGER(30) NOT NULL AUTO_INCREMENT,
  uid INTEGER(30) NOT NULL,
  c_code INTEGER(30) NOT NULL,
  overall_rating INTEGER(5) NOT NULL DEFAULT 0,
  upvotes INTEGER(30) NOT NULL DEFAULT 0,
  downvotes INTEGER(30) NOT NULL DEFAULT 0,
  report_count INTEGER(30) NOT NULL DEFAULT 0,
  semester_period VARCHAR(50) NOT NULL DEFAULT '',
  student_thoughts VARCHAR(255) NOT NULL DEFAULT '',  
  course_tag VARCHAR(50) NOT NULL DEFAULT '',
  enjoyment_rating INTEGER(5) NOT NULL DEFAULT 0,
  
  CONSTRAINT userCourse_fid_FK 
  	FOREIGN KEY (faculty_id)
  	REFERENCES Faculty(faculty_id),  
  
  CONSTRAINT userCourse_rid_PK
  	PRIMARY KEY (review_id),
  
  CONSTRAINT userCourse_uid_FK 
  	FOREIGN KEY (uid)
  	REFERENCES auth_user(id),  
  
  CONSTRAINT userCourse_cid_FK
	FOREIGN KEY (c_code)
	REFERENCES Course(course_code)
  
  );


CREATE TABLE user_dept (
  uid INTEGER(30) NOT NULL ,
  dept_code INTEGER(30) NOT NULL ,
  UNIQUE KEY (uid, dept_code),
  
  CONSTRAINT userDept_uid_FK 
  	FOREIGN KEY (uid)
	REFERENCES auth_user(id),  
  
  CONSTRAINT userDept_deptCode_FK 
  	FOREIGN KEY (dept_code)
  	REFERENCES Department(dept_code)
  
  );


CREATE TABLE faculty_course (
  faculty_id INTEGER(30) NOT NULL,
  dept_code INTEGER(30) NOT NULL,
  UNIQUE KEY (faculty_id, dept_code),
  
  CONSTRAINT facultyCourse_fid_FK
  	FOREIGN KEY (faculty_id)
  	REFERENCES Faculty(faculty_id),
  
  CONSTRAINT facultyCourse_dCode_FK
  	FOREIGN KEY (dept_code)
  	REFERENCES Department(dept_code)
  
  );


CREATE TABLE dept_generalComments (
  dept_code INTEGER(30) NOT NULL,
  general_comment VARCHAR(255) NOT NULL DEFAULT '',
  
  CONSTRAINT deptGeneralCom_deptcode_FK
  	FOREIGN KEY (dept_code)
  	REFERENCES Department(dept_code),
  
  CONSTRAINT deptGeneralCom_generalCom_PK
  	PRIMARY KEY (general_comment)
  
  );


CREATE TABLE faculty_personality (
  faculty_id INTEGER(30) NOT NULL,
  personality VARCHAR(50) NOT NULL,
  uid INTEGER(30) NOT NULL,
  rid INTEGER(30) NOT NULL,
  
  CONSTRAINT facPersonality_fid_FK 
  	FOREIGN KEY (faculty_id)	
  	REFERENCES Faculty(faculty_id),
  
  CONSTRAINT facPersonality_personality_PK
  	PRIMARY KEY (personality),
  
  CONSTRAINT facPersonality_uid_FK
  	FOREIGN KEY (uid)
  	REFERENCES auth_user(id),
  
  CONSTRAINT facPersonality_rid_FK
  	FOREIGN KEY (rid)
  	REFERENCES user_faculty_rev(review_id)
  
  );


CREATE TABLE faculty_workload (
  faculty_id INTEGER(30) NOT NULL,
  workload VARCHAR(50) NOT NULL,
  uid INTEGER(30) NOT NULL,
  rid INTEGER(30) NOT NULL,
  
  CONSTRAINT facWorkload_fid_FK 
  	FOREIGN KEY (faculty_id)	
  	REFERENCES Faculty(faculty_id),
  
  CONSTRAINT facWorkload_workload_PK
  	PRIMARY KEY (workload),
  
  CONSTRAINT facWorkload_uid_FK
  	FOREIGN KEY (uid)
  	REFERENCES auth_user(id),
  
  CONSTRAINT facWorkload_rid_FK
  	FOREIGN KEY (rid)
  	REFERENCES user_faculty_rev(review_id)
  
  );
  
  
  
  CREATE TABLE faculty_miscellaneous (
  faculty_id INTEGER(30) NOT NULL,
  miscellaneous VARCHAR(50) NOT NULL,
  uid INTEGER(30) NOT NULL,
  rid INTEGER(30) NOT NULL,
  
  CONSTRAINT facMiscellaneous_fid_FK 
  	FOREIGN KEY (faculty_id)	
  	REFERENCES Faculty(faculty_id),
  
  CONSTRAINT facMiscellaneous_miscellaneous_PK
  	PRIMARY KEY (miscellaneous),
  
  CONSTRAINT facMiscellaneous_uid_FK
  	FOREIGN KEY (uid)
  	REFERENCES auth_user(id),
  
  CONSTRAINT facMiscellaneous_rid_FK
  	FOREIGN KEY (rid)
  	REFERENCES user_faculty_rev(review_id)
  
  );



CREATE TABLE similar_faculty (
  fid INTEGER(30) NOT NULL,
  similar_faculty INTEGER(100) NOT NULL DEFAULT 0,
  
  UNIQUE KEY (fid,similar_faculty),

  CONSTRAINT similarFaculty_fid_FK
  	FOREIGN KEY (fid)
  	REFERENCES Faculty(faculty_id)
  
  
  );


CREATE TABLE similar_courses (
  course_code INTEGER(30) NOT NULL,
  similar_course INTEGER(100) NOT NULL DEFAULT 0,
  
  UNIQUE KEY (course_code, similar_course),
  
  CONSTRAINT similarcourses_pid_FK
  	FOREIGN KEY (course_code)
  	REFERENCES Course(course_code)
  
  );

