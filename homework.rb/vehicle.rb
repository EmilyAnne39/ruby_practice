class Vehicle
    attr_accessor :b, :model, :year
    def initialize(brand,model,year)
        @b=brand
        @model=model
        @year=year
    end
end
new_car = Vehicle.new('Toyota', 'Corolla', 2004)

puts new_car.b

