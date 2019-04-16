require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...


@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Ash", last_name: "Ketchum", hourly_rate: 6)
@store1.employees.create(first_name: "Misty", last_name: "Unknown", hourly_rate: 12)
@store1.employees.create(first_name: "Brock", last_name: "Unknown", hourly_rate: 47)

@store2.employees.create(first_name: "Pika", last_name: "Chu", hourly_rate: 47)
@store2.employees.create(first_name: "Peek", last_name: "Atyou", hourly_rate: 7)
@store2.employees.create(first_name: "Pee", last_name: "Kachu", hourly_rate: 32)


