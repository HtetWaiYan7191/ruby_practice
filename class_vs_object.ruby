class Animal

    def initialize(name= "Unknown", number_of_legs)
        @id = Random.rand(1..1000)
        @name = name
        @number_of_legs = number_of_legs
    end

    def speak
       puts "Hello I am #{@name} and I have #{@number_of_legs} leg"
    end

end

animal_1 = Animal.new("Rex", 4)
animal_2 = Animal.new("Bob", 8)

animal_3 = Animal.new(3)
animal_4 = Animal.new("Rex",6)

animal_1.speak
animal_2.speak
animal_3.speak
animal_4.speak


