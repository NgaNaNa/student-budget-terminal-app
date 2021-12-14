require 'colorize'
require_relative './methods.rb'

puts "What is your name?"
name = gets.chomp
puts "Hi #{name}, what is your expected income this week?"
income = gets.chomp.to_i
puts "What is your total expenses this week?"
expenses = gets.chomp.to_i
puts "Enter the amount of savings you'd like to achieve in this week's budget"
savings = gets.chomp.to_i

puts "Please confirm the following information entered:"
puts "This week's income is #{income}".
puts "This week's total expenses are #{income}".
puts "You'd like to add #{savings} to your savings account".

