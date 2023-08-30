class Owner 
    attr_accessor :name
    attr_reader :animals
    def initialize(name)
        @name = name
        @animals = []
    end

    def add_animal(animal)
        @animals << animal
        animal.owner = self
    end

end