class Product   
    def initialize(item, price, quantity)
        @item, @price, @quantity = item, price, quantity
    end
    def what
        @item
    end
    def price
        @price
    end
    def quantity
        @quantity
    end
    def change_quantity(quantity)
        @quantity = quantity
    end
end
my_type=Product.new("Notebook","$5",2)
puts my_type.quantity
puts "we need more stuff"
my_type.change_quantity(500)
puts "we now have #{my_type.quantity}"