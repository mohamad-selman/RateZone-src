from django.test import TestCase, RequestFactory
from main.models import *
from django.contrib.auth.models import User, AnonymousUser
from .views import *


# Create your tests here.
class EmployeeTestCase(TestCase):
    @classmethod
    def setUpTestData(cls):
        cls.obj = Department.objects.create(department=418, dept_name='Computer Science', overall_rating=4)

    def setUp(self):
        # adding an employee to CS department
        csdept = Department.objects.get(department=418)
        Employee.objects.create(department=csdept, fname='fname_test1', lname='lname_test1',
                                main_rank='Faculty', sub_rank='Associate Professor',
                                overall_rating=4.5, teaching_quality=4, exams_difficulty=4)

    def test_employee(self):
        get_employee_record = Employee.objects.get(fname='fname_test1', lname='lname_test1')
        print('----------------------------------------------------------------------')
        print(f'Creation of Employee {get_employee_record.fname}, {get_employee_record.lname}:'
              f' {get_employee_record.department}')
        print('----------------------------------------------------------------------')
        self.assertEqual(get_employee_record.fname, 'fname_test1')
        self.assertEqual(get_employee_record.lname, 'lname_test1')


class Employee2TestCase(TestCase):
    @classmethod
    def setUpTestData(cls):
        cls.obj = Department.objects.create(department=410, dept_name='Mathematics', overall_rating=3)

    def setUp(self):
        # adding an employee to CS department
        mathdept = Department.objects.get(department=410)
        Employee.objects.create(department=mathdept, fname='math_employee1_fname', lname='math_employee1_lname',
                                main_rank='Faculty', sub_rank='Associate Professor',
                                overall_rating=4.5, teaching_quality=4, exams_difficulty=4)

    def test_employee(self):
        get_employee_record = Employee.objects.get(fname='math_employee1_fname', lname='math_employee1_lname')
        print('----------------------------------------------------------------------')
        print(f'Creation of Employee {get_employee_record.fname}, {get_employee_record.lname}:'
              f' {get_employee_record.department}')
        print('----------------------------------------------------------------------')
        self.assertEqual(get_employee_record.fname, 'math_employee1_fname')
        self.assertEqual(get_employee_record.lname, 'math_employee1_lname')


class Employee3TestCase(TestCase):
    @classmethod
    def setUpTestData(cls):
        cls.obj = Department.objects.create(department=480, dept_name='Statistic', overall_rating=4)

    def setUp(self):
        # adding an employee to CS department
        statdept = Department.objects.get(department=480)
        Employee.objects.create(department=statdept, fname='stat_fname', lname='stat_lname',
                                main_rank='Faculty', sub_rank='Associate Professor',
                                overall_rating=4.5, teaching_quality=4, exams_difficulty=4)

    def test_employee(self):
        get_employee_record = Employee.objects.get(fname='stat_fname', lname='stat_lname')
        print('----------------------------------------------------------------------')
        print(f'Creation of Employee {get_employee_record.fname}, {get_employee_record.lname}:'
              f' {get_employee_record.department}')
        print('----------------------------------------------------------------------')
        self.assertEqual(get_employee_record.fname, 'stat_fname')
        self.assertEqual(get_employee_record.lname, 'stat_lname')


class Employee4TestCase(TestCase):
    @classmethod
    def setUpTestData(cls):
        cls.obj = Department.objects.create(department=1612, dept_name='Computer Engineering', overall_rating=3.5)

    def setUp(self):
        # adding an employee to CS department
        cedept = Department.objects.get(department=1612)
        Employee.objects.create(department=cedept, fname='ce_fname', lname='ce_lname',
                                main_rank='Faculty', sub_rank='Associate Professor',
                                overall_rating=4.5, teaching_quality=4, exams_difficulty=4)

    def test_employee(self):
        get_employee_record = Employee.objects.get(fname='ce_fname', lname='ce_lname')
        print('----------------------------------------------------------------------')
        print(f'Creation of Employee {get_employee_record.fname}, {get_employee_record.lname}:'
              f' {get_employee_record.department}')
        print('----------------------------------------------------------------------')
        self.assertEqual(get_employee_record.fname, 'ce_fname')
        self.assertEqual(get_employee_record.lname, 'ce_lname')


class CourseTest(TestCase):
    def setUp(self):
        Course.objects.create(course=418223, course_name='Systems Programming', overall_rating=4.5,
                              effort_required=4.5, enjoyment_rating=4)

    def test_course(self):
        course_record = Course.objects.get(course=418223)
        self.assertEqual(course_record.course, 418223)
        self.assertEqual(course_record.course_name, 'Systems Programming')
        self.assertEqual(course_record.overall_rating, 4.5)
        self.assertEqual(course_record.effort_required, 4.5)
        self.assertEqual(course_record.enjoyment_rating, 4)


class UserTest(TestCase):
    @classmethod
    def setUpTestData(cls):
        cls.objUser = User.objects.create_user(password='testpass123', username='testUser', first_name='user1_fname',
                                               last_name='user1_lname', email='test@gmail.com')

        cls.objDept = Department.objects.create(department=418, dept_name='Computer Science', overall_rating=4)
        csdept = Department.objects.get(department=418)
        Employee.objects.create(department=csdept, fname='fname_test1', lname='lname_test1',
                                main_rank='Faculty', sub_rank='Associate Professor',
                                overall_rating=4.5, teaching_quality=4, exams_difficulty=4)
        Course.objects.create(course=418223, course_name='Systems Programming', overall_rating=4.5,
                              effort_required=4.5, enjoyment_rating=4)
        get_user = User.objects.get(username='testUser')
        get_emp = Employee.objects.get(fname='fname_test1', lname='lname_test1')
        get_course = Course.objects.get(course=418223)
        cls.obj = UserFacultyRev.objects.create(overall_rating=4, difficulty_rating=4,
                                                teaching_quality=4, course_id=get_course.course,
                                                employee_id=get_emp.employee, user_id=get_user.id)

    def test_user(self):
        get_user = User.objects.get(username='testUser')
        get_emp = Employee.objects.get(fname='fname_test1', lname='lname_test1')
        get_course = Course.objects.get(course=418223)
        get_review = UserFacultyRev.objects.get(course_id=get_course.course, user_id=get_user.id,
                                                employee_id=get_emp.employee)
        print('----------------------------------------------------------------------')
        print(f'User ability to review: {get_user.username} reviews {get_emp.fname}, {get_emp.lname}'
              f' for course: {get_course.course_name}')
        print('----------------------------------------------------------------------')
        self.assertEqual(get_user.username, 'testUser')
        self.assertEqual(get_user.email, 'test@gmail.com')
        self.assertEqual(get_user.first_name, 'user1_fname')
        self.assertEqual(get_user.last_name, 'user1_lname')
        self.assertEqual(get_review.course_id, 418223)


class DashboardViewTest(TestCase):
    @classmethod
    def setUpTestData(cls):
        cls.objUser = User.objects.create_user(password='testpass123', username='testUser', first_name='user1_fname',
                                               last_name='user1_lname', email='test@gmail.com')

    def setUp(self):
        # giving access to the request factory
        self.factory = RequestFactory()
        self.user = User.objects.get(username='testUser')

    def test_details(self):
        request = self.factory.get('/dashboard/')
        request.user = self.user
        response = dashboard(request)
        print('----------------------------------------------------------------------')
        print(f'Dashboard status code for user {self.user}: {response.status_code}')
        print('----------------------------------------------------------------------')
        self.assertEqual(response.status_code, 200)


class QueueViewTest(TestCase):
    @classmethod
    def setUpTestData(cls):
        cls.objUser = User.objects.create_user(password='testpass123', username='testUser', first_name='user1_fname',
                                               last_name='user1_lname', email='test@gmail.com')

    def setUp(self):
        # giving access to the request factory
        self.factory = RequestFactory()
        self.user = User.objects.get(username='testUser')

    def test_details(self):
        request = self.factory.get('/queue/')
        request.user = self.user
        response = queue(request)
        print('----------------------------------------------------------------------')
        print(f'Queue status code for user {self.user}: {response.status_code}')
        print('----------------------------------------------------------------------')
        self.assertEqual(response.status_code, 200)
