class InputBudget

    def input_income(income)
        puts "Hi #{name}, what is your expected income this week?"
        income = gets.chomp.to_i
    end

    def input_expenses(expenses)
        puts "What is your total expenses this week?"
        expenses = gets.chomp.to_i
    end

    def input_savings(savings)
        puts "Enter the amount of savings you'd like to achieve in this week's budget"
        savings = gets.chomp.to_i
    end
end