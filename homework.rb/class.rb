class User
    def initialize(name,age)
        @name = name
        @age = age
    end
    def who
        @name
    end
    def age
        @age
    end
end
new_user = User.new('Emily', '34')
puts new_user.who



    