require "./animal.rb"
require "./foods.rb"

class Cat < Animal
    attr_accessor :color
    def initialize(color, name="Unknown")
        super("cat", 4, name)
        @color = color
        @liked_food = CatFood.new
    end

    def make_cute
        puts "Meow Meow"
    end

    def speak 
        puts " I'm a cat Meow Meow "
    end

end