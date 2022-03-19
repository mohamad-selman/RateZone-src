# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey and OneToOneField has `on_delete` set to the desired behavior
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from django.db import models


class Course(models.Model):
    course_code = models.IntegerField(primary_key=True)
    course_name = models.CharField(max_length=50)

    objects = models.Manager()

    class Meta:
        managed = False
        db_table = 'Course'


class Department(models.Model):
    dept_code = models.IntegerField(primary_key=True)
    dept_name = models.CharField(max_length=50)
    overall_rating = models.IntegerField()

    objects = models.Manager()

    class Meta:
        managed = False
        db_table = 'Department'


class Faculty(models.Model):
    faculty_id = models.AutoField(primary_key=True)
    dept_code = models.ForeignKey(Department, models.DO_NOTHING, db_column='dept_code')
    fname = models.CharField(max_length=50)
    lname = models.CharField(max_length=50)

    objects = models.Manager()

    class Meta:
        managed = False
        db_table = 'Faculty'


class Professor(models.Model):
    faculty_id = models.ForeignKey(Faculty, models.DO_NOTHING)
    phd_from = models.CharField(max_length=50)
    prof_rank = models.CharField(max_length=50)
    research_area = models.CharField(max_length=50)
    image = models.CharField(max_length=255, blank=True, null=True)

    objects = models.Manager()

    class Meta:
        managed = False
        db_table = 'Professor'


class TeachingAssistant(models.Model):
    faculty = models.ForeignKey(Faculty, models.DO_NOTHING)
    masters_from = models.CharField(max_length=50)

    objects = models.Manager()

    class Meta:
        managed = False
        db_table = 'Teaching_Assistant'


class AuthGroup(models.Model):
    name = models.CharField(unique=True, max_length=150)

    class Meta:
        managed = False
        db_table = 'auth_group'


class AuthGroupPermissions(models.Model):
    id = models.BigAutoField(primary_key=True)
    group = models.ForeignKey(AuthGroup, models.DO_NOTHING)
    permission = models.ForeignKey('AuthPermission', models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_group_permissions'
        unique_together = (('group', 'permission'),)


class AuthPermission(models.Model):
    name = models.CharField(max_length=255)
    content_type = models.ForeignKey('DjangoContentType', models.DO_NOTHING)
    codename = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'auth_permission'
        unique_together = (('content_type', 'codename'),)


class AuthUser(models.Model):
    password = models.CharField(max_length=128)
    last_login = models.DateTimeField(blank=True, null=True)
    is_superuser = models.IntegerField()
    username = models.CharField(unique=True, max_length=150)
    first_name = models.CharField(max_length=150)
    last_name = models.CharField(max_length=150)
    email = models.CharField(max_length=254)
    is_staff = models.IntegerField()
    is_active = models.IntegerField()
    date_joined = models.DateTimeField()
    user_level = models.IntegerField()
    discarded_rev_count = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'auth_user'


class AuthUserGroups(models.Model):
    id = models.BigAutoField(primary_key=True)
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)
    group = models.ForeignKey(AuthGroup, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_user_groups'
        unique_together = (('user', 'group'),)


class AuthUserUserPermissions(models.Model):
    id = models.BigAutoField(primary_key=True)
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)
    permission = models.ForeignKey(AuthPermission, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_user_user_permissions'
        unique_together = (('user', 'permission'),)


class DeptGeneralcomments(models.Model):
    dept_code = models.ForeignKey(Department, models.DO_NOTHING, db_column='dept_code')
    general_comment = models.CharField(primary_key=True, max_length=255)

    class Meta:
        managed = False
        db_table = 'dept_generalComments'


class DjangoAdminLog(models.Model):
    action_time = models.DateTimeField()
    object_id = models.TextField(blank=True, null=True)
    object_repr = models.CharField(max_length=200)
    action_flag = models.PositiveSmallIntegerField()
    change_message = models.TextField()
    content_type = models.ForeignKey('DjangoContentType', models.DO_NOTHING, blank=True, null=True)
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'django_admin_log'


class DjangoContentType(models.Model):
    app_label = models.CharField(max_length=100)
    model = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'django_content_type'
        unique_together = (('app_label', 'model'),)


class DjangoMigrations(models.Model):
    id = models.BigAutoField(primary_key=True)
    app = models.CharField(max_length=255)
    name = models.CharField(max_length=255)
    applied = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'django_migrations'


class DjangoSession(models.Model):
    session_key = models.CharField(primary_key=True, max_length=40)
    session_data = models.TextField()
    expire_date = models.DateTimeField()


    class Meta:
        managed = False
        db_table = 'django_session'


class FacultyCourse(models.Model):
    faculty = models.ForeignKey(Faculty, models.DO_NOTHING)
    c_code = models.ForeignKey(Course, models.DO_NOTHING, db_column='c_code')

    objects = models.Manager()

    class Meta:
        managed = False
        db_table = 'faculty_course'
        unique_together = (('faculty', 'c_code'),)



class FacultyMiscellaneous(models.Model):
    faculty = models.ForeignKey(Faculty, models.DO_NOTHING)
    miscellaneous = models.CharField(primary_key=True, max_length=50)
    uid = models.ForeignKey(AuthUser, models.DO_NOTHING, db_column='uid')
    rid = models.ForeignKey('UserFacultyRev', models.DO_NOTHING, db_column='rid')

    objects = models.Manager()

    class Meta:
        managed = False
        db_table = 'faculty_miscellaneous'


class FacultyPersonality(models.Model):
    faculty = models.ForeignKey(Faculty, models.DO_NOTHING)
    personality = models.CharField(primary_key=True, max_length=50)
    uid = models.ForeignKey(AuthUser, models.DO_NOTHING, db_column='uid')
    rid = models.ForeignKey('UserFacultyRev', models.DO_NOTHING, db_column='rid')

    objects = models.Manager()

    class Meta:
        managed = False
        db_table = 'faculty_personality'


class FacultyWorkload(models.Model):
    faculty = models.ForeignKey(Faculty, models.DO_NOTHING)
    workload = models.CharField(primary_key=True, max_length=50)
    uid = models.ForeignKey(AuthUser, models.DO_NOTHING, db_column='uid')
    rid = models.ForeignKey('UserFacultyRev', models.DO_NOTHING, db_column='rid')

    objects = models.Manager()

    class Meta:
        managed = False
        db_table = 'faculty_workload'


class SimilarCourses(models.Model):
    course_code = models.ForeignKey(Course, models.DO_NOTHING, db_column='course_code')
    similar_course = models.IntegerField()

    objects = models.Manager()

    class Meta:
        managed = False
        db_table = 'similar_courses'
        unique_together = (('course_code', 'similar_course'),)


class SimilarFaculty(models.Model):
    fid = models.ForeignKey(Faculty, models.DO_NOTHING, db_column='fid')
    similar_faculty = models.IntegerField()

    objects = models.Manager()

    class Meta:
        managed = False
        db_table = 'similar_faculty'
        unique_together = (('fid', 'similar_faculty'),)


class UserCourseRev(models.Model):
    faculty = models.ForeignKey(Faculty, models.DO_NOTHING)
    review_id = models.AutoField(primary_key=True)
    uid = models.ForeignKey(AuthUser, models.DO_NOTHING, db_column='uid')
    c_code = models.ForeignKey(Course, models.DO_NOTHING, db_column='c_code')
    overall_rating = models.IntegerField()
    upvotes = models.IntegerField()
    downvotes = models.IntegerField()
    report_count = models.IntegerField()
    semester_period = models.CharField(max_length=50)
    student_thoughts = models.CharField(max_length=255)
    course_tag = models.CharField(max_length=50)
    enjoyment_rating = models.IntegerField()

    objects = models.Manager()

    class Meta:
        managed = False
        db_table = 'user_course_rev'


class UserDept(models.Model):
    uid = models.ForeignKey(AuthUser, models.DO_NOTHING, db_column='uid')
    dept_code = models.ForeignKey(Department, models.DO_NOTHING, db_column='dept_code')

    objects = models.Manager()

    class Meta:
        managed = False
        db_table = 'user_dept'
        unique_together = (('uid', 'dept_code'),)


class UserFacultyRev(models.Model):
    faculty = models.ForeignKey(Faculty, models.DO_NOTHING)
    review_id = models.AutoField(primary_key=True)
    uid = models.ForeignKey(AuthUser, models.DO_NOTHING, db_column='uid')
    c_code = models.ForeignKey(Course, models.DO_NOTHING, db_column='c_code')
    overall_rating = models.IntegerField()
    difficulty_rating = models.IntegerField()
    upvotes = models.IntegerField()
    downvotes = models.IntegerField()
    report_count = models.IntegerField()
    semester_period = models.CharField(max_length=50)
    student_thoughts = models.CharField(max_length=255)
    teaching_quality = models.IntegerField()

    objects = models.Manager()

    class Meta:
        managed = False
        db_table = 'user_faculty_rev'
