class Coffee
    def cost 
        raise NotImplementedError
    end

    def description
        raise NotImplementedError
    end
end

class Vanila < Coffee
    def cost 
        500
    end 

    def description
        'This is vanila coffee'
    end
end

class Caramel < Coffee
    def cost
        600
    end

    def description
        'This is Caramel'
    end
end

class BaseDecorator < Coffee
    def initialize(size)
        @size = size
    end

    def cost
        @size.cost
    end
    
    def description
        @size.description
    end
end

class Small < BaseDecorator
    def cost 
        @size.cost - 100
    end

    def description
        @size.description + "small"
    end
end 

class Medium < BaseDecorator
    def cost 
        @size.cost + 100
    end

    def description
        @size.description + "medium"
    end
end 

class Large < BaseDecorator
    def cost 
        @size.cost + 200
    end

    def description
        @size.description + "large"
    end
end 

vanila_coffee = Vanila.new
small_vanila_coffee = Small.new(vanila_coffee)

puts small_vanila_coffee.description
puts small_vanila_coffee.cost

