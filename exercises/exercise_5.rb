require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
totalrevenue = Store.sum("annual_revenue");

puts totalrevenue;

avg_annual_revenue = totalrevenue / Store.all.count;

puts avg_annual_revenue;

store_morethan_1m = Store.where("annual_revenue > 1000000").count

puts store_morethan_1m