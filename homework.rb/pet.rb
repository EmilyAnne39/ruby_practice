class Pet
    
    def initialize(type, name)
        @type=type
        @name=name
    end
    def type
    @type
    end
    def name
    @name
    end
end
dog = Pet.new("lab", "Buster")
puts dog.name
