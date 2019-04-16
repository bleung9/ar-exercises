require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'
require_relative './exercise_7'

puts "Exercise 8"
puts "----------"

# Your code goes here ...

@store1.employees.create(first_name: "Surprised", last_name: "Pikachu", hourly_rate: 199)
pp Employee.find_by(first_name: "Surprised").password