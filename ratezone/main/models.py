from django.db import models
from django.contrib.auth.models import User


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

    def __str__(self):
        retval = f"{self.username}: {self.first_name}, {self.last_name}"
        return retval

    class Meta:
        managed = False


class Department(models.Model):
    department = models.IntegerField(primary_key=True)
    dept_name = models.CharField(max_length=50)
    overall_rating = models.FloatField(blank=True, null=True)
    admin_support = models.FloatField(blank=True, null=True)
    users = models.ManyToManyField(User)

    objects = models.Manager()

    def __str__(self):
        return self.dept_name

    class Meta:
        db_table = 'Department'


class Employee(models.Model):
    employee = models.BigAutoField(primary_key=True)
    department = models.ForeignKey(Department, on_delete=models.CASCADE)
    fname = models.CharField(max_length=50)
    lname = models.CharField(max_length=50)
    image = models.CharField(max_length=500, blank=True, null=True)
    main_rank = models.CharField(max_length=150)
    sub_rank = models.CharField(max_length=150, blank=True, null=True)
    overall_rating = models.FloatField(blank=True, null=True, default=0)
    teaching_quality = models.FloatField(blank=True, null=True, default=0)
    exams_difficulty = models.FloatField(blank=True, null=True, default=0)
    users = models.ManyToManyField(User)
    user_watch = models.ManyToManyField(User, related_name='user_watch_faculty')

    objects = models.Manager()

    def __str__(self):
        retval = f"{self.fname},{self.lname}"
        return retval

    class Meta:
        db_table = 'Employee'


class Course(models.Model):
    course = models.IntegerField(primary_key=True)
    course_name = models.CharField(max_length=50, null=True)
    overall_rating = models.FloatField(blank=True, null=True)
    effort_required = models.FloatField(blank=True, null=True)
    enjoyment_rating = models.FloatField(blank=True, null=True)
    # There exists a many-to-many relationship between Faculty and Course
    # many faculties can teach many courses
    # and many courses can be taught by many faculty
    # faculties = models.ManyToManyField(Faculty)
    employees = models.ManyToManyField(Employee)
    users = models.ManyToManyField(User)
    users_watch = models.ManyToManyField(User, related_name='user_watch_course')

    objects = models.Manager()

    def __str__(self):
        return self.course_name

    class Meta:
        db_table = 'Course'


class DeptGeneralcomments(models.Model):
    department = models.ForeignKey(Department, on_delete=models.CASCADE)
    general_comment = models.CharField(max_length=255)

    objects = models.Manager()

    class Meta:
        db_table = 'dept_gen_com'


class UserCourseRev(models.Model):
    employee = models.ForeignKey(Employee, on_delete=models.CASCADE)
    review = models.AutoField(primary_key=True)
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    course = models.ForeignKey(Course, on_delete=models.CASCADE, blank=True, null=True)
    overall_rating = models.IntegerField()
    upvotes = models.IntegerField(blank=True, null=True)
    downvotes = models.IntegerField(blank=True, null=True)
    report_count = models.IntegerField(blank=True, null=True)
    semester_period = models.CharField(max_length=50, blank=True, null=True)
    student_thoughts = models.CharField(max_length=500, blank=True, null=True)
    course_tag = models.CharField(max_length=50, blank=True, null=True)
    enjoyment_rating = models.IntegerField()
    effort_required = models.IntegerField()
    # users = models.ManyToManyField(User, through='UserReactCourse')

    objects = models.Manager()

    class Meta:
        db_table = 'user_course_rev'
        unique_together = (('user', 'course', 'review'),)


class UserFacultyRev(models.Model):
    employee = models.ForeignKey(Employee, on_delete=models.CASCADE)
    review = models.AutoField(primary_key=True)
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    course = models.ForeignKey(Course, on_delete=models.CASCADE, blank=True, null=True)
    overall_rating = models.IntegerField()
    difficulty_rating = models.IntegerField()
    upvotes = models.IntegerField(blank=True, null=True, default=0)
    downvotes = models.IntegerField(blank=True, null=True, default=0)
    report_count = models.IntegerField(blank=True, null=True, default=0)
    semester_period = models.CharField(max_length=50, blank=True, null=True)
    student_thoughts = models.CharField(max_length=255, blank=True, null=True)
    teaching_quality = models.IntegerField()

    objects = models.Manager()

    def __str__(self):
        retval = f"user: {self.user}, employee: {self.employee}: overall rating: {self.overall_rating}"
        return retval

    class Meta:
        db_table = 'user_faculty_rev'
        unique_together = (('user', 'employee', 'review', 'course'),)


class FacultyMiscellaneous(models.Model):
    employee = models.ForeignKey(Employee, on_delete=models.CASCADE)
    miscellaneous = models.CharField(max_length=50, null=True, blank=False, default="", editable=False)
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    review = models.ForeignKey(UserFacultyRev, on_delete=models.CASCADE)

    objects = models.Manager()

    def __str__(self):
        retval = f"Faculty {self.employee} has {self.miscellaneous}"
        return retval

    class Meta:
        db_table = 'faculty_misc'
        unique_together = (('employee', 'miscellaneous', 'user', 'review'),)


class FacultyPersonality(models.Model):
    employee = models.ForeignKey(Employee, on_delete=models.CASCADE)
    personality = models.CharField(max_length=50, null=True, blank=False, default="", editable=False)
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    review = models.ForeignKey(UserFacultyRev, on_delete=models.CASCADE)

    objects = models.Manager()

    def __str__(self):
        retval = f"faculty {self.employee} has {self.personality}"
        return retval

    class Meta:
        db_table = 'faculty_personality'
        unique_together = (('employee', 'personality', 'user', 'review'),)


class FacultyWorkload(models.Model):
    employee = models.ForeignKey(Employee, on_delete=models.CASCADE)
    workload = models.CharField(max_length=50, null=True, blank=False, default="", editable=False)
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    review = models.ForeignKey(UserFacultyRev, on_delete=models.CASCADE)

    objects = models.Manager()

    def __str__(self):
        retval = f"faculty {self.employee} has {self.workload}"
        return retval

    class Meta:
        db_table = 'faculty_workload'
        unique_together = (('employee', 'workload', 'user', 'review'),)


class SimilarCourses(models.Model):
    course = models.ForeignKey(Course, on_delete=models.CASCADE)
    similar_course = models.IntegerField()

    objects = models.Manager()

    class Meta:
        db_table = 'similar_courses'
        unique_together = (('course', 'similar_course'),)


class SimilarFaculty(models.Model):
    employee = models.ForeignKey(Employee, on_delete=models.CASCADE)
    similar_faculty = models.IntegerField()

    objects = models.Manager()

    def __str__(self):
        return f'{self.similar_faculty}'

    class Meta:
        db_table = 'similar_faculty'
        unique_together = (('employee', 'similar_faculty'),)


class UserReactCourse(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    review = models.ForeignKey(UserCourseRev, on_delete=models.CASCADE)
    # upvote and downvote are discrete values
    # if user likes a review - set upvote value to 1
    # if user dislikes a review - set downvote value to 1
    # Disliking the review will omit the liked review
    # so if the downvoting is set to be 1 by design change
    # the upvote value to 0 and vice versa
    upvote = models.IntegerField(blank=True, null=True)
    downvote = models.IntegerField(blank=True, null=True)

    objects = models.Manager()

    class Meta:
        db_table = 'user_react_course'
        unique_together = (('user', 'review'),)


class UserReactFaculty(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    review = models.ForeignKey(UserFacultyRev, on_delete=models.CASCADE)
    # upvote and downvote are discrete values
    # if user likes a review - set upvote value to 1
    # if user dislikes a review - set downvote value to 1
    # Disliking the review will omit the liked review
    # so if the downvoting is set to be 1 by design change
    # the upvote value to 0 and vice versa
    upvote = models.IntegerField(blank=True, null=True)
    downvote = models.IntegerField(blank=True, null=True)

    objects = models.Manager()

    class Meta:
        db_table = 'user_react_faculty'
        unique_together = (('user', 'review'),)


class AccountEmailaddress(models.Model):
    email = models.CharField(unique=True, max_length=254)
    verified = models.IntegerField()
    primary = models.IntegerField()
    user = models.ForeignKey(User, on_delete=models.CASCADE)

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
