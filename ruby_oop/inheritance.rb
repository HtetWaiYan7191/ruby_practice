class Person
    def initialize(name,age)
        @name = name
        @age = age
    end

    def test
        puts "test statement"
    end
end

class Employee < Person
    def initialize(name, age, position)
        @position = position
        super(name, age)
    end

    def display_info
        puts "Name: #{@name} Age:#{@age} Position: #{@position}"
    end 
end

employee = Employee.new('John', 25, 'backend developer')
employee.display_info
puts String.ancestors