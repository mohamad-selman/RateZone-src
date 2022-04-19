CREATE TABLE Language_Instructor
(
    faculty_id INT,
    image VARCHAR(500),

    CONSTRAINT languageInstructor_PK PRIMARY KEY (faculty_id),

    CONSTRAINT languageInstructor_faculty_facultyid_FK
        FOREIGN KEY (faculty_id)
        REFERENCES Faculty(faculty_id)
);

ALTER TABLE Teaching_Assistant
ADD COLUMN image VARCHAR(500);
