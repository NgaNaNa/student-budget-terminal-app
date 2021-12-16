require 'colorize'
require_relative './classes/input_budget.rb'

#Initialising Questions and Input
puts "What is your name?"
name = gets.chomp

puts "Hi #{name}, what is your expected income this week?"
income = gets.chomp.to_i
puts "What is your total expenses this week?"
expenses = gets.chomp.to_i
puts "Enter the amount of savings you'd like to achieve in this week's budget"
savings = gets.chomp.to_i

#2nd feature - Listing all entries and asking user to verify.
#Present users with options to select.

puts "Please confirm the following information entered:".red
puts "This week's income is $#{income}"
puts "This week's total expenses is $#{expenses}"
puts "You'd like to add $#{savings} to your savings account"



# week_01 = InputBudget.new(this_week)
# week_01.income(250)
# week_01.display_weekly_log

