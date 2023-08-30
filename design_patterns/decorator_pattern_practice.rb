class Coffee
    def initialize(description)
        @description = description
    end

    def cost 
        100
    end
    
    def description
        @description
    end
end

class BlackCoffee < Coffee
    def initialize
        super("black coffee")
    end

    def cost 
        500
    end
end

class Americano < Coffee
    def initialize
        super('americano')
    end

    def cost 
        1000
    end
end


class AddOn < Coffee
    def initialize(description, beverage)
        super(description)
        @beverage = beverage
    end

    def cost
        @beverage.cost
    end

    def description
        @beverage.description
    end
end

class Milk < AddOn

    def initialize(beverage)
        super("milk", beverage)
    end

    def cost 
        @beverage.cost + 300
    end

    def description
        @beverage.description
    end

end

black_coffee = BlackCoffee.new
americano = Americano.new

black_coffee_milk = Milk.new(black_coffee)

puts black_coffee_milk.cost

puts americano.cost
puts black_coffee.description