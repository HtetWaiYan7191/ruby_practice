class Department
    attr_accessor :name, :employees
    def initialize(name)
        @name = name
        @employees = []
    end

    def add_employee(employee)
        employees << employee
        employee.department = self
    end
end

class Employee
    attr_accessor :name, :age, :position, :department
    def initialize(name, age, position)
        @name = name
        @age = age
        @position = position
        @department = nil
    end
end

math_department = Department.new("Math")
john = Employee.new('John', 21, 'math_teacher')

math_department.add_employee(john)

puts john.department.name
puts math_department.employees.map(&:name)