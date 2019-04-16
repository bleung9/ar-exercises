require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

total_rev = Store.sum(:annual_revenue)
puts "company's total revenue is #{total_rev}"
puts "company's average revenue for all stores is #{total_rev / Store.count}"
num_over_mil = Store.where("annual_revenue > 1000000").size
puts "#{num_over_mil} stores earn over $1M annual revenue"




# Your code goes here ...
