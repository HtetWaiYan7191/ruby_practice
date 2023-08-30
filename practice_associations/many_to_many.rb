class Student
    attr_accessor :name, :age, :enrollments
  
    def initialize(name, age)
      @name = name
      @age = age
      @enrollments = []
    end
  
    def add_enrollment(enrollment)
      @enrollments << enrollment
    end
  end
  
  class Course
    attr_accessor :name, :duration, :enrollments
  
    def initialize(name, duration)
      @name = name
      @duration = duration
      @enrollments = []
    end
  
    def add_enrollment(enrollment)
      @enrollments << enrollment
    end
  end
  
  class Enrollment
    attr_accessor :date, :student, :course
  
    def initialize(date, student, course)
      @date = date
      @student = student
      @course = course
      student.add_enrollment(self)
      course.add_enrollment(self)
    end
  end
  
  htetwaiyan = Student.new('htetwaiyan', 21)
  ruby = Course.new('ruby', '2 months')
  ruby_on_rails = Course.new('ruby on rails', '2 months')
  
  enrollment_ruby = Enrollment.new('2020/1/10', htetwaiyan, ruby)
  enrollment_rails = Enrollment.new('2020/2/10', htetwaiyan, ruby_on_rails)
  htetwaiyan.enrollments.map { |enrollment| puts "Course: #{enrollment.course.name}"}
  ruby.enrollments.map { |enrollment| puts "Students: #{enrollment.student.name}" }
  