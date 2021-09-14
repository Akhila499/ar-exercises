require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...
class Employee < ActiveRecord::Base
  validates :first_name, presence: true
  validates :first_name, presence: true
  validates :hourly_rate, numericality:{greater_than: 200} 
  validates :hourly_rate, numericality:{less_than: 40} 
  validates :store, presence: true
end

class Store < ActiveRecord::Base
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { greater_than: 0 }
end
def new_store_via_input 
  input_store_name = gets.chomp
  new_store = Store.create(name:input_store_name)
  new_store.valid?
  new_store.errors.messages.each do |error|
    puts error
  end
end

new_store_via_input

