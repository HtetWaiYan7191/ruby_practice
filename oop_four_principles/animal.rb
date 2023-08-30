require './remover.rb'
require './foods.rb'

class Animal
    attr_reader :owner, :visits
    def initialize(type, number_of_legs, name="Unknown")
    @id = Random.rand(1..1000)
    @name = name
    @number_of_legs = number_of_legs
    @type = type
    @liked_food = NoFood.new
    @visits = []
    end

   attr_reader :id, :type
   attr_accessor :name, :number_of_legs

   def owner=(owner)
        @owner = owner
        owner.animals.push(self) unless owner.animals.include?(self)
   end

   def speak
       puts "I am an animal"
   end

   def remove_leg
        remover = Remover.new
        @number_of_legs = remover.decrease(@number_of_legs)
   end

   def likes_food?(food)
    @liked_food.is_liked?(food)
   end
end



