require "./animal.rb"
require "./foods.rb"

class Dog < Animal
    
    def initialize(color, name="Unknown")
        super("dog", 4, name)
        @color = color
        @liked_food = DogFood.new
    end

    def bring_stick
        puts "I am bringing a stick for you"
    end

    def speak
        puts " Woof Woof "
    end


end