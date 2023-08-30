class Student
    attr_accessor :name, :age, :enrollments
    def initialize(name, age)
        @name = name
        @age = age
        @enrollments = []
    end

    def add_enrollment(date,course)
        Enrollment.new(date, self, course)
    end
end

class Course
    attr_accessor :name, :enrollments
    def initialize(name)
        @name = name
        @enrollments = []
    end

    def add_enrollment(date, student)
        Enrollment.new(date, student, self)
    end
end

class Enrollment
    attr_accessor :date, :student, :course
    def initialize(date, student, course)
        @date = date
        @student = student
        @course = course

        student.enrollments << self
        course.enrollments << self
    end
end

htetwaiyan = Student.new('htetwaiyan', 21)
may = Student.new('may', 23)
ruby = Course.new('ruby')
php = Course.new('php')

may.add_enrollment('2020/12/1', ruby)
htetwaiyan.add_enrollment('2020/12/1', ruby)
htetwaiyan.add_enrollment('2020/4/12', php)

 htetwaiyan.enrollments.map { |enrollment| puts "Courses: #{enrollment.course.name}"}
 ruby.enrollments.map {|enrollment| puts "Student :  #{enrollment.student.name}"}

