require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'

puts "Exercise 3"
puts "----------"

@store3 = Store.find_by(id: 3)
@store3.destroy

pp Store.all

# Your code goes here ...

