require 'colorize'
require 'tty-prompt'

prompt = TTY::Prompt.new
# require_relative './classes/input_budget.rb'

#Initialising Questions and Input
# prompt.ask("What is your name?")
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

def calc_budget(income, expenses, savings)
    puts "This is to save and calculate method"
    return income - expenses - savings
end

weekly_budget = input_budget(user_name)

puts "Review the information and select the following options:".green
puts "This week's income is $#{weekly_budget[0]}."
puts "This week's total expense is $#{weekly_budget[1]}."
puts "You'd like to add $#{weekly_budget[2]} to your savings account."

# prompt.select("1) Save & calculate budget, 2) Start Over", %w(Option_1 Option_2))

#2nd feature - Listing all entries and asking user to review.
#Present user with options to select.
# puts "Enter 1 to save & calculate budget"
# puts "Enter 2 to start over"
two_option_menu = prompt.select("Please choose one of the following") do |menu|
    menu.choice "Calculate_Budget"
    menu.choice "Start_Over"
end

if two_option_menu == "Calculate_Budget"
    calc_outcome = calc_budget(weekly_budget[0], weekly_budget[1], weekly_budget[2])
    elsif two_option_menu == "Start_Over"
        weekly_budget = input_budget(user_name)
    else
        puts "Please choose available options only"
end

# input = gets.chomp

# if input == 1
#     calc_outcome = save_calc_budget(weekly_budget[0], weekly_budget[1], weekly_budget[2])
# elsif input == 2
#     weekly_budget = input_budget(user_name)
# else
#     puts "Please enter the number 1 or 2 only"
# end

daily_free_spend = calc_outcome / 7

puts "You now have a daily free spending of $#{daily_free_spend}"







# week_01 = InputBudget.new(this_week)
# week_01.income(250)
# week_01.display_weekly_log

