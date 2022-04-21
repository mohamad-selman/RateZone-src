from django.db import models


class User(models.Model):
    user_id = models.BigAutoField(primary_key=True)
    email = models.CharField(unique=True, max_length=50)
    username = models.CharField(unique=True, max_length=50)
    passw = models.CharField(max_length=50)
    fname = models.CharField(max_length=50)
    lname = models.CharField(max_length=50)
    user_level = models.IntegerField()
    discarded_rev_count = models.IntegerField()

    objects = models.Manager()

    def __str__(self):
        return self.username

    class Meta:
        managed = False
        db_table = 'User'


class AuthUser(models.Model):
    id = models.BigAutoField(primary_key=True)
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
    major = models.CharField(max_length=150, blank=True, null=True)

    objects = models.Manager()

    retval = f"{username}: {first_name}, {last_name}"

    def __str__(self):
        return self.retval

    class Meta:
        managed = False
        db_table = 'auth_user'


class Department(models.Model):
    dept_code = models.IntegerField(primary_key=True)
    dept_name = models.CharField(max_length=50)
    overall_rating = models.FloatField(blank=True, null=True)
    admin_support = models.FloatField(blank=True, null=True)
    user = models.ManyToManyField(AuthUser)

    objects = models.Manager()

    class Meta:
        managed = False
        db_table = 'Department'


class Faculty(models.Model):
    faculty_id = models.BigAutoField(primary_key=True)
    dept_code = models.ForeignKey(Department, db_column='dept_code', on_delete=models.CASCADE)
    fname = models.CharField(max_length=50)
    lname = models.CharField(max_length=50)
    overall_rating = models.FloatField(blank=True, null=True)
    teaching_quality = models.FloatField(blank=True, null=True)
    exams_difficulty = models.FloatField(blank=True, null=True)

    # for the mapping of faculty and course
    # each faculty member can teach many courses
    # and many courses can be taught by many faculty members
    # course = models.ManyToManyField(Course)

    objects = models.Manager()

    retval = f"{fname},{lname}"

    def __str__(self):
        return self.retval

    class Meta:
        managed = False
        db_table = 'Faculty'


class Course(models.Model):
    course_id = models.IntegerField(primary_key=True)
    course_name = models.CharField(max_length=50, null=True)
    overall_rating = models.FloatField(blank=True, null=True)
    effort_required = models.FloatField(blank=True, null=True)
    enjoyment_rating = models.FloatField(blank=True, null=True)
    # There exists a many-to-many relationship between Faculty and Course
    # many faculties can teach many courses
    # and many courses can be taught by many faculty
    faculty = models.ManyToManyField(Faculty)

    objects = models.Manager()

    def __str__(self):
        return self.course_name

    class Meta:
        managed = False
        db_table = 'Course'


class LanguageInstructor(models.Model):
    faculty = models.OneToOneField(Faculty, primary_key=True, on_delete=models.CASCADE)
    image = models.CharField(max_length=500, blank=True, null=True)

    objects = models.Manager()

    class Meta:
        managed = False
        db_table = 'Language_Instructor'


class Professor(models.Model):
    faculty_id = models.ForeignKey(Faculty, on_delete=models.CASCADE)
    phd_from = models.CharField(max_length=255, blank=True, null=True)
    prof_rank = models.CharField(max_length=50, blank=True, null=True)
    research_area = models.CharField(max_length=255, blank=True, null=True)
    image = models.CharField(max_length=500, blank=True, null=True)

    objects = models.Manager()

    retval = f"faculty is {faculty_id}"

    def __str__(self):
        return self.retval

    class Meta:
        managed = False
        db_table = 'Professor'


class TeachingAssistant(models.Model):
    faculty_id = models.ForeignKey(Faculty, on_delete=models.CASCADE)
    masters_from = models.CharField(max_length=50, blank=True, null=True)
    image = models.CharField(max_length=500, blank=True, null=True)

    objects = models.Manager()

    retval = F"TA is {faculty_id}"

    def __str__(self):
        return self.retval

    class Meta:
        managed = False
        db_table = 'Teaching_Assistant'


class DeptGeneralcomments(models.Model):
    dept_code = models.ForeignKey(Department, db_column='dept_code', on_delete=models.CASCADE)
    general_comment = models.CharField(primary_key=True, max_length=255)

    objects = models.Manager()

    class Meta:
        managed = False
        db_table = 'dept_generalComments'


class UserCourseRev(models.Model):
    faculty = models.ForeignKey(Faculty, on_delete=models.CASCADE)
    review_id = models.AutoField(primary_key=True)
    uid = models.ForeignKey(AuthUser, on_delete=models.CASCADE, db_column='uid')
    c_code = models.ForeignKey(Course, on_delete=models.CASCADE, db_column='c_code', blank=True, null=True)
    overall_rating = models.IntegerField()
    upvotes = models.IntegerField(blank=True, null=True)
    downvotes = models.IntegerField(blank=True, null=True)
    report_count = models.IntegerField(blank=True, null=True)
    semester_period = models.CharField(max_length=50, blank=True, null=True)
    student_thoughts = models.CharField(max_length=500, blank=True, null=True)
    course_tag = models.CharField(max_length=50, blank=True, null=True)
    enjoyment_rating = models.IntegerField()
    effort_required = models.IntegerField()

    objects = models.Manager()

    class Meta:
        managed = False
        db_table = 'user_course_rev'


class UserDept(models.Model):
    uid = models.ForeignKey(AuthUser, on_delete=models.CASCADE, db_column='uid')
    dept_code = models.ForeignKey(Department, on_delete=models.CASCADE, db_column='dept_code')

    objects = models.Manager()

    class Meta:
        managed = False
        db_table = 'user_dept'
        unique_together = (('uid', 'dept_code'),)


class UserFacultyRev(models.Model):
    faculty = models.ForeignKey(Faculty, on_delete=models.CASCADE)
    review_id = models.AutoField(primary_key=True)
    uid = models.ForeignKey(AuthUser, on_delete=models.CASCADE, db_column='uid')
    c_code = models.ForeignKey(Course, on_delete=models.CASCADE, db_column='c_code', blank=True, null=True)
    overall_rating = models.IntegerField()
    difficulty_rating = models.IntegerField()
    upvotes = models.IntegerField(blank=True, null=True)
    downvotes = models.IntegerField(blank=True, null=True)
    report_count = models.IntegerField(blank=True, null=True)
    semester_period = models.CharField(max_length=50, blank=True, null=True)
    student_thoughts = models.CharField(max_length=255, blank=True, null=True)
    teaching_quality = models.IntegerField()

    objects = models.Manager()

    class Meta:
        managed = False
        db_table = 'user_faculty_rev'


class UserQueue(models.Model):
    uid = models.ForeignKey(AuthUser, on_delete=models.CASCADE, db_column='uid')
    fid = models.ForeignKey(Faculty, on_delete=models.CASCADE, db_column='fid')

    objects = models.Manager()

    class Meta:
        managed = False
        db_table = 'user_queue'
        unique_together = (('uid', 'fid'),)


class UserWatchCourse(models.Model):
    uid = models.ForeignKey(AuthUser, on_delete=models.CASCADE, db_column='uid')
    cid = models.ForeignKey(Course, on_delete=models.CASCADE, db_column='cid')

    objects = models.Manager()

    class Meta:
        managed = False
        db_table = 'user_watch_course'
        unique_together = (('uid', 'cid'),)


class UserWatchFaculty(models.Model):
    uid = models.ForeignKey(AuthUser, on_delete=models.CASCADE, db_column='uid')
    fid = models.ForeignKey(Faculty, on_delete=models.CASCADE, db_column='fid')

    objects = models.Manager()

    class Meta:
        managed = False
        db_table = 'user_watch_faculty'
        unique_together = (('uid', 'fid'),)


class FacultyCourse(models.Model):
    faculty = models.ForeignKey(Faculty, on_delete=models.CASCADE)
    cid = models.ForeignKey(Course, db_column='cid', on_delete=models.CASCADE)

    objects = models.Manager()

    returning_string = f"faculty {faculty} and course {cid}"

    def __str__(self):
        return self.returning_string

    class Meta:
        managed = False
        db_table = 'faculty_course'
        unique_together = (('faculty', 'cid'),)


class FacultyMiscellaneous(models.Model):
    faculty = models.ForeignKey(Faculty, on_delete=models.CASCADE)
    miscellaneous = models.CharField(primary_key=True, max_length=50)
    uid = models.ForeignKey(AuthUser, db_column='uid', on_delete=models.CASCADE)
    rid = models.ForeignKey('UserFacultyRev', db_column='rid', on_delete=models.CASCADE)

    objects = models.Manager()

    retval = f"Faculty {faculty} has {miscellaneous}"

    def __str__(self):
        return self.retval

    class Meta:
        managed = False
        db_table = 'faculty_miscellaneous'


class FacultyPersonality(models.Model):
    faculty = models.ForeignKey(Faculty, on_delete=models.CASCADE)
    personality = models.CharField(primary_key=True, max_length=50)
    uid = models.ForeignKey(AuthUser, on_delete=models.CASCADE, db_column='uid')
    rid = models.ForeignKey('UserFacultyRev', on_delete=models.CASCADE, db_column='rid')

    objects = models.Manager()

    retval = f"faculty {faculty} has {personality}"

    def __str__(self):
        return self.retval

    class Meta:
        managed = False
        db_table = 'faculty_personality'


class FacultyWorkload(models.Model):
    faculty = models.ForeignKey(Faculty, on_delete=models.CASCADE)
    workload = models.CharField(primary_key=True, max_length=50)
    uid = models.ForeignKey(AuthUser, on_delete=models.CASCADE, db_column='uid')
    rid = models.ForeignKey('UserFacultyRev', on_delete=models.CASCADE, db_column='rid')

    objects = models.Manager()

    retval = f"faculty {faculty} has {workload}"

    def __str__(self):
        return self.retval

    class Meta:
        managed = False
        db_table = 'faculty_workload'


class SimilarCourses(models.Model):
    cid = models.ForeignKey(Course, db_column='course_id', on_delete=models.CASCADE)
    similar_course = models.IntegerField()

    objects = models.Manager()

    class Meta:
        managed = False
        db_table = 'similar_courses'
        unique_together = (('cid', 'similar_course'),)


class SimilarFaculty(models.Model):
    fid = models.ForeignKey(Faculty, db_column='fid', on_delete=models.CASCADE)
    similar_faculty = models.IntegerField()

    objects = models.Manager()

    class Meta:
        managed = False
        db_table = 'similar_faculty'
        unique_together = (('fid', 'similar_faculty'),)


class AccountEmailaddress(models.Model):
    email = models.CharField(unique=True, max_length=254)
    verified = models.IntegerField()
    primary = models.IntegerField()
    user = models.ForeignKey('AuthUser', on_delete=models.CASCADE)

    objects = models.Manager()

    def __str__(self):
        return self.email

    class Meta:
        managed = False
        db_table = 'account_emailaddress'


class AccountEmailconfirmation(models.Model):
    created = models.DateTimeField()
    sent = models.DateTimeField(blank=True, null=True)
    key = models.CharField(unique=True, max_length=64)
    email_address = models.ForeignKey(AccountEmailaddress, on_delete=models.CASCADE)

    objects = models.Manager()

    class Meta:
        managed = False
        db_table = 'account_emailconfirmation'


class AuthGroup(models.Model):
    name = models.CharField(unique=True, max_length=150)

    objects = models.Manager()

    class Meta:
        managed = False
        db_table = 'auth_group'


class AuthGroupPermissions(models.Model):
    id = models.BigAutoField(primary_key=True)
    group = models.ForeignKey(AuthGroup, on_delete=models.CASCADE)
    permission = models.ForeignKey('AuthPermission', on_delete=models.CASCADE)

    objects = models.Manager()

    class Meta:
        managed = False
        db_table = 'auth_group_permissions'
        unique_together = (('group', 'permission'),)


class AuthPermission(models.Model):
    name = models.CharField(max_length=255)
    content_type = models.ForeignKey('DjangoContentType', on_delete=models.CASCADE)
    codename = models.CharField(max_length=100)

    objects = models.Manager()

    class Meta:
        managed = False
        db_table = 'auth_permission'
        unique_together = (('content_type', 'codename'),)


class AuthUserGroups(models.Model):
    id = models.BigAutoField(primary_key=True)
    user = models.ForeignKey(AuthUser, on_delete=models.CASCADE)
    group = models.ForeignKey(AuthGroup, on_delete=models.CASCADE)

    objects = models.Manager()

    class Meta:
        managed = False
        db_table = 'auth_user_groups'
        unique_together = (('user', 'group'),)


class AuthUserUserPermissions(models.Model):
    id = models.BigAutoField(primary_key=True)
    user = models.ForeignKey(AuthUser, on_delete=models.CASCADE)
    permission = models.ForeignKey(AuthPermission, on_delete=models.CASCADE)

    objects = models.Manager()

    class Meta:
        managed = False
        db_table = 'auth_user_user_permissions'
        unique_together = (('user', 'permission'),)


class DjangoAdminLog(models.Model):
    action_time = models.DateTimeField()
    object_id = models.TextField(blank=True, null=True)
    object_repr = models.CharField(max_length=200)
    action_flag = models.PositiveSmallIntegerField()
    change_message = models.TextField()
    content_type = models.ForeignKey('DjangoContentType', blank=True, null=True, on_delete=models.CASCADE)
    user = models.ForeignKey(AuthUser, on_delete=models.CASCADE)

    objects = models.Manager()

    class Meta:
        managed = False
        db_table = 'django_admin_log'


class DjangoContentType(models.Model):
    app_label = models.CharField(max_length=100)
    model = models.CharField(max_length=100)

    objects = models.Manager()

    class Meta:
        managed = False
        db_table = 'django_content_type'
        unique_together = (('app_label', 'model'),)


class DjangoMigrations(models.Model):
    id = models.BigAutoField(primary_key=True)
    app = models.CharField(max_length=255)
    name = models.CharField(max_length=255)
    applied = models.DateTimeField()

    objects = models.Manager()

    class Meta:
        managed = False
        db_table = 'django_migrations'


class DjangoSession(models.Model):
    session_key = models.CharField(primary_key=True, max_length=40)
    session_data = models.TextField()
    expire_date = models.DateTimeField()

    objects = models.Manager()

    class Meta:
        managed = False
        db_table = 'django_session'


class DjangoSite(models.Model):
    domain = models.CharField(unique=True, max_length=100)
    name = models.CharField(max_length=50)

    objects = models.Manager()

    class Meta:
        managed = False
        db_table = 'django_site'


class SocialaccountSocialaccount(models.Model):
    provider = models.CharField(max_length=30)
    uid = models.CharField(max_length=191)
    last_login = models.DateTimeField()
    date_joined = models.DateTimeField()
    extra_data = models.TextField()
    user = models.ForeignKey(AuthUser, on_delete=models.CASCADE)

    objects = models.Manager()

    class Meta:
        managed = False
        db_table = 'socialaccount_socialaccount'
        unique_together = (('provider', 'uid'),)


class SocialaccountSocialapp(models.Model):
    provider = models.CharField(max_length=30)
    name = models.CharField(max_length=40)
    client_id = models.CharField(max_length=191)
    secret = models.CharField(max_length=191)
    key = models.CharField(max_length=191)

    objects = models.Manager()

    class Meta:
        managed = False
        db_table = 'socialaccount_socialapp'


class SocialaccountSocialappSites(models.Model):
    id = models.BigAutoField(primary_key=True)
    socialapp = models.ForeignKey(SocialaccountSocialapp, on_delete=models.CASCADE)
    site = models.ForeignKey(DjangoSite, on_delete=models.CASCADE)

    objects = models.Manager()

    class Meta:
        managed = False
        db_table = 'socialaccount_socialapp_sites'
        unique_together = (('socialapp', 'site'),)


class SocialaccountSocialtoken(models.Model):
    token = models.TextField()
    token_secret = models.TextField()
    expires_at = models.DateTimeField(blank=True, null=True)
    account = models.ForeignKey(SocialaccountSocialaccount, on_delete=models.CASCADE)
    app = models.ForeignKey(SocialaccountSocialapp, on_delete=models.CASCADE)

    objects = models.Manager()

    class Meta:
        managed = False
        db_table = 'socialaccount_socialtoken'
        unique_together = (('app', 'account'),)
