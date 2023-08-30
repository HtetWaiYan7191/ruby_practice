class BaseBeverae 
    def initialize(description)
        @description = description
    end

    def get_description
        @description
    end

    def cost

    end 

end

class HouseBlend < BaseBeverae
    def initialize
        super("house blend")
    end

    def cost
        400
    end
end


class DarkRoast < BaseBeverae
    def initialize
        super("dark roast")
    end 

    def cost 
        500
    end
end

class AddOn < BaseBeverae
    def initialize(description,  beverage)
        super(description)
        @beverage = beverage
    end

    def get_description
        "#{@beverage.get_description}, #{@description}"
    end

    def cost 
        @beverage.cost
    end

end

class Sugar < AddOn
    def initialize(beverage)
        super("Sugar", beverage)
    end

    def get_description
        "#{@beverage.get_description} with #{@description}"
    end

    def cost 
        @beverage.cost + 50
    end
end


class Milk < AddOn
    def initialize(beverage)
      super("Milk", beverage)
    end
  
    def get_description
      "#{@beverage.get_description} with #{@description}"
    end
  
    def cost
      @beverage.cost + 100
    end
  end
  

  house_blend = HouseBlend.new
  dark_roase = DarkRoast.new
  sugar_add = Sugar.new(dark_roase)
  milk_add = Milk.new(house_blend)

  puts milk_add.cost
  puts milk_add.get_description
  puts sugar_add.get_description

  puts house_blend.cost
  puts dark_roase.cost