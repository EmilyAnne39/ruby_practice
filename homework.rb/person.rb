class Person
  attr_accessor :name, :age
  def initialize(name, age)
    @name = name
    @age = age
  end
  def change_name=(input)
    @name = input
  end
end

my_new_person = Person.new("Emily", 39)
puts "Hi, I am #{my_new_person.name} and I am #{my_new_person.age} years old"
my_new_person.change_name = "Jerry"
puts "And I am Jerry, nice to meet you #{my_new_person.name}"
