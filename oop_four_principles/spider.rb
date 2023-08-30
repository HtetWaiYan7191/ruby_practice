require './animal.rb'
require './foods.rb'

class Spider < Animal
    attr_accessor :poinson
    def initialize(poinson, name="Unknown")
        super("spider", 6, name)
        @poinson = poinson
        @liked_food = SpiderFood.new #polymorphism overwrite liked_food data from animal class
    end
end