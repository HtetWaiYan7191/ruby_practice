class Person
    MESSAGE = "Class Constant"
    @@counter = 0
    def initialize
        @@counter += 1
    end

    def self.counter
        @@counter
    end

    def self.counter=(new_counter)
        @@counter = new_counter
    end
end

p1 = Person.new
p2 = Person.new
p3 = Person.new

Person.counter = 5

puts Person.counter
