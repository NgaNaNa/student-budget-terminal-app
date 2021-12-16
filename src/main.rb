require 'colorize'
require_relative './classes/input_budget.rb'

#Initialising Questions and Input
puts "What is your name?"
user_name = gets.chomp

def input_budget(name)
    puts "Hi #{name}, what is your expected income this week?"
    income = gets.chomp.to_i
    puts "What is your total expenses this week?"
    expenses = gets.chomp.to_i
    puts "Enter the amount of savings you'd like to achieve in this week's budget"
    savings = gets.chomp.to_i
    return income, expenses, savings
end

def save_calc_budget(income, expenses, savings)
    puts "This is to save and calculate method"
end

weekly_budget = input_budget(user_name)

#2nd feature - Listing all entries and asking user to verify.
#Present users with options to select.

puts "Please review the information you have entered:".green
puts "This week's income is $#{weekly_budget[0]}."
puts "This week's total expenses is $#{weekly_budget[1]}."
puts "You'd like to add $#{weekly_budget[2]} to your savings account."

puts "Enter 1 to save & calculate budget"
puts "Enter 2 to start over"

input = gets.chomp.to_i
if input == 1
    save_calc_budget(weekly_budget[0], weekly_budget[1], weekly_budget[2])
elsif input == 2
    weekly_budget = input_budget(user_name)
    
else
    puts "Please enter the number 1 or 2 only"
end






# week_01 = InputBudget.new(this_week)
# week_01.income(250)
# week_01.display_weekly_log

