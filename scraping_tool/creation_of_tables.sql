CREATE TABLE User (
  id INTEGER(15) NOT NULL AUTO_INCREMENT,
  email VARCHAR(50) NOT NULL,
  passw VARCHAR(50) NOT NULL,
  fname VARCHAR(50) NOT NULL,
  lname VARCHAR(50) NOT NULL,
  user_level INTEGER(5) NOT NULL DEFAULT 0,
  discarded_rev_count INTEGER(15) NOT NULL DEFAULT 0,
  
  CONSTRAINT user_uid_PK 
  	PRIMARY KEY (id),
  
  CONSTRAINT user_email_UK 
    UNIQUE (email)
  
  );


CREATE TABLE Department (
  id INTEGER(30) NOT NULL,
  dept_name VARCHAR(50) NOT NULL, 
  overall_rating INTEGER(5) NOT NULL DEFAULT 0,
  
  CONSTRAINT dept_dCode_PK
  	PRIMARY KEY (id)
  
  );


-- CREATE TABLE employee (
--   id INTEGER(30) NOT NULL AUTO_INCREMENT,
--   department INTEGER(30) NOT NULL,
--   fname VARCHAR(50) NOT NULL,
--   lname VARCHAR(50) NOT NULL,
  
--   CONSTRAINT employee_fid_PK
--   	PRIMARY KEY (id),
  
--   CONSTRAINT employee_deptCode_FK
--   	FOREIGN KEY (department)
--   	REFERENCES Department(id)
  
  
--   );

CREATE TABLE Employee (
  id INTEGER NOT NULL AUTO_INCREMENT,
  department INTEGER(30) NOT NULL,
  fname VARCHAR(50) NOT NULL,
  lname VARCHAR(50) NOT NULL, 
  image VARCHAR(255) NULL,
  rank VARCHAR(255) NOT NULL,
  sub_rank VARCHAR(255) NULL,
  overall_rating FLOAT(30) NULL,
  teaching_quality FLOAT(30) NULL,
  exams_difficulty FLOAT(30) NULL,

  CONSTRAINT employee_id_PK
    PRIMARY KEY (id),

  CONSTRAINT employee_deptCode_FK
  	FOREIGN KEY (department)
  	REFERENCES Department(id)

);


-- CREATE TABLE Professor (
--   employee_id INTEGER(30) NOT NULL AUTO_INCREMENT,
--   phd_from VARCHAR(50) NOT NULL,
--   prof_rank VARCHAR(50) NOT NULL,
--   research_area VARCHAR(50) NOT NULL,
--   image VARCHAR(255) NULL,
  
--   CONSTRAINT prof_fid_FK
--   	FOREIGN KEY (employee_id)
--   	REFERENCES employee(employee_id)
  
--   );



-- CREATE TABLE Teaching_Assistant (
--   employee_id INTEGER(15) NOT NULL AUTO_INCREMENT,
--   masters_from VARCHAR(50) NOT NULL,
  
--   CONSTRAINT TA_fid_FK
--   	FOREIGN KEY (employee_id)
--   	REFERENCES employee(employee_id)
  
  
--   );


CREATE TABLE Course (
  id INTEGER(15) NOT NULL,
  course_name VARCHAR(50) NOT NULL,
  overall_rating INTEGER(5) NOT NULL DEFAULT 0,
  effort_required INTEGER(5) NOT NULL DEFAULT 0,
  enjoyment_rating INTEGER(5) NOT NULL DEFAULT 0,

  CONSTRAINT course_cCode_PK
  	PRIMARY KEY (id)
  
  
  );



CREATE TABLE user_employee_rev (
  employee INTEGER(30) NOT NULL,
  review_id INTEGER(30) NOT NULL AUTO_INCREMENT,
  user INTEGER(30) NOT NULL,
  course INTEGER(30) NOT NULL,
  overall_rating INTEGER(5) NOT NULL DEFAULT 0,
  difficulty_rating INTEGER(5) NOT NULL DEFAULT 0,
  upvotes INTEGER(30) NOT NULL DEFAULT 0,
  downvotes INTEGER(30) NOT NULL DEFAULT 0,
  report_count INTEGER(30) NOT NULL DEFAULT 0,
  semester_period VARCHAR(50) NOT NULL DEFAULT '',
  student_thoughts VARCHAR(255) NOT NULL DEFAULT '',
  teaching_quality INTEGER(5) NOT NULL DEFAULT 0,
  
  CONSTRAINT useremployee_fid_FK 
  	FOREIGN KEY (employee)
  	REFERENCES employee(id),
  
  CONSTRAINT useremployee_rid_PK 
  	PRIMARY KEY (review_id),
  
  CONSTRAINT useremployee_uid_FK 
  	FOREIGN KEY (user)
  	REFERENCES auth_user(id),
  
  CONSTRAINT useremployee_cid_FK
  	FOREIGN KEY (course)
  	REFERENCES Course(id)
  
  );


CREATE TABLE user_course_rev (
  employee INTEGER(30) NOT NULL,
  id INTEGER(30) NOT NULL AUTO_INCREMENT,
  user INTEGER(30) NOT NULL,
  course INTEGER(30) NOT NULL,
  overall_rating INTEGER(5) NOT NULL DEFAULT 0,
  upvotes INTEGER(30) NOT NULL DEFAULT 0,
  downvotes INTEGER(30) NOT NULL DEFAULT 0,
  report_count INTEGER(30) NOT NULL DEFAULT 0,
  semester_period VARCHAR(50) NOT NULL DEFAULT '',
  student_thoughts VARCHAR(255) NOT NULL DEFAULT '',  
  course_tag VARCHAR(50) NOT NULL DEFAULT '',
  enjoyment_rating INTEGER(5) NOT NULL DEFAULT 0,
  
  CONSTRAINT userCourse_fid_FK 
  	FOREIGN KEY (employee)
  	REFERENCES employee(id),  
  
  CONSTRAINT userCourse_rid_PK
  	PRIMARY KEY (id),
  
  CONSTRAINT userCourse_uid_FK 
  	FOREIGN KEY (user)
  	REFERENCES auth_user(id),  
  
  CONSTRAINT userCourse_cid_FK
	FOREIGN KEY (course)
	REFERENCES Course(id)
  
  );


CREATE TABLE user_dept (
  id INTEGER(30) NOT NULL ,
  department INTEGER(30) NOT NULL ,
  UNIQUE KEY (id, dept_code),
  
  CONSTRAINT userDept_uid_FK 
  	FOREIGN KEY (id)
	REFERENCES auth_user(id),  
  
  CONSTRAINT userDept_deptCode_FK 
  	FOREIGN KEY (department)
  	REFERENCES Department(department)
  
  );


CREATE TABLE employee_course (
  employee INTEGER(30) NOT NULL,
  department INTEGER(30) NOT NULL,
  UNIQUE KEY (employee, dept_code),
  
  CONSTRAINT employeeCourse_fid_FK
  	FOREIGN KEY (employee)
  	REFERENCES employee(id),
  
  CONSTRAINT employeeCourse_dCode_FK
  	FOREIGN KEY (department)
  	REFERENCES Department(id)
  
  );


CREATE TABLE dept_generalComments (
  department INTEGER(30) NOT NULL,
  general_comment VARCHAR(255) NOT NULL DEFAULT '',
  
  CONSTRAINT deptGeneralCom_deptcode_FK
  	FOREIGN KEY (department)
  	REFERENCES Department(id),
  
  CONSTRAINT deptGeneralCom_generalCom_PK
  	PRIMARY KEY (general_comment)
  
  );


CREATE TABLE employee_personality (
  employee INTEGER(30) NOT NULL,
  personality VARCHAR(50) NOT NULL,
  user INTEGER(30) NOT NULL,
  review INTEGER(30) NOT NULL,
  
  CONSTRAINT facPersonality_fid_FK 
  	FOREIGN KEY (employee)	
  	REFERENCES employee(id),
  
  CONSTRAINT facPersonality_personality_PK
  	PRIMARY KEY (personality),
  
  CONSTRAINT facPersonality_uid_FK
  	FOREIGN KEY (user)
  	REFERENCES auth_user(id),
  
  CONSTRAINT facPersonality_rid_FK
  	FOREIGN KEY (review)
  	REFERENCES user_employee_rev(id)
  
  );


CREATE TABLE employee_workload (
  employee INTEGER(30) NOT NULL,
  workload VARCHAR(50) NOT NULL,
  user INTEGER(30) NOT NULL,
  review INTEGER(30) NOT NULL,
  
  CONSTRAINT facWorkload_fid_FK 
  	FOREIGN KEY (employee)	
  	REFERENCES employee(id),
  
  CONSTRAINT facWorkload_workload_PK
  	PRIMARY KEY (workload),
  
  CONSTRAINT facWorkload_uid_FK
  	FOREIGN KEY (user)
  	REFERENCES auth_user(id),
  
  CONSTRAINT facWorkload_rid_FK
  	FOREIGN KEY (review)
  	REFERENCES user_employee_rev(id)
  
  );
  
  
  
  CREATE TABLE employee_misc (
  employee INTEGER(30) NOT NULL,
  miscellaneous VARCHAR(50) NOT NULL,
  user INTEGER(30) NOT NULL,
  review INTEGER(30) NOT NULL,
  
  CONSTRAINT facMiscellaneous_fid_FK 
  	FOREIGN KEY (employee)	
  	REFERENCES employee(id),
  
  CONSTRAINT facMiscellaneous_miscellaneous_PK
  	PRIMARY KEY (miscellaneous),
  
  CONSTRAINT facMiscellaneous_uid_FK
  	FOREIGN KEY (user)
  	REFERENCES auth_user(id),
  
  CONSTRAINT facMiscellaneous_rid_FK
  	FOREIGN KEY (review)
  	REFERENCES user_employee_rev(id)
  
  );



CREATE TABLE similar_employee (
  employee INTEGER(30) NOT NULL,
  similar_employee INTEGER(100) NOT NULL DEFAULT 0,
  
  UNIQUE KEY (employee,similar_employee),

  CONSTRAINT similaremployee_fid_FK
  	FOREIGN KEY (employee)
  	REFERENCES employee(id)
  
  
  );


CREATE TABLE similar_courses (
  course INTEGER(30) NOT NULL,
  similar_course INTEGER(100) NOT NULL DEFAULT 0,
  
  UNIQUE KEY (course, similar_course),
  
  CONSTRAINT similarcourses_pid_FK
  	FOREIGN KEY (course)
  	REFERENCES Course(id)
  
  );

