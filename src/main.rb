require 'colorize'
require 'tty-prompt'

require_relative 'methods.rb'

def input_budget(name)
    puts "Hi #{name}, what is your expected income this week?".green
    income = gets.chomp.to_i
    puts "What is your total expenses this week?".green
    expenses = gets.chomp.to_i
    puts "Enter the amount of savings you'd like to achieve in this week's budget".green
    savings = gets.chomp.to_i
    return income, expenses, savings
end

def calc_budget(income, expenses, savings)
    return income - expenses - savings
end

#2nd feature - Listing all entries and asking user to review.
#Present user with options to select.
def menu_calc_start_exit()
    prompt = TTY::Prompt.new
    #Initialising Questions and Input
    # prompt.ask("What is your name?")
    puts "What is your name?".green
    user_name = gets.chomp
    weekly_budget = input_budget(user_name)

    puts "Review the information you've entered:".green
    puts "This week's total income is $#{weekly_budget[0]}."
    puts "This week's total expense is $#{weekly_budget[1]}."
    puts "You'd like to add $#{weekly_budget[2]} to your savings account."

    while true
        menu = prompt.select("Please choose one of the following:".green) do |option|
            option.choice "Calculate_Budget"
            option.choice "Start_Over"
            option.choice "Exit"
        end

        if menu == "Calculate_Budget"
            budget_advice(weekly_budget, user_name)
        elsif menu == "Start_Over"
            weekly_budget = input_budget(user_name)
        elsif menu == "Exit"
            return
        else
            puts "Please choose available options only".green
        end
    end
end

menu_calc_start_exit()