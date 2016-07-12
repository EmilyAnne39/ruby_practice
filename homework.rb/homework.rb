class Student
  attr_accessor :name, :email, :password
  def initialize (name, email, password)
    @name=name
    @email=email
    @password=password
  end
end
puts 'What is your name?'
stu_info = gets.chomp.downcase
puts 'What is your email?'
stu_info = gets.chomp.downcase
puts 'What is your password?'
stu_info = gets.chomp

