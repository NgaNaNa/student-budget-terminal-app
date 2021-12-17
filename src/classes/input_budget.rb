class InputBudget
    
    attr_accessor :name, :weeks, :income, :expenses, :savings
    
    def initialize(week)
        @weeks = []
        @income = []
        @expenses = []
        @savings = []
    end
    
    def income(amounts_in_dollar)
        @income << amounts_in_dollar
        #previously had :
        # @income << {week: week_number, amount: amounts_in_dollar}
    end
    
    def display_weekly_log
        @weeks.count > 0 ? @weeks.income(amounts_in_dollar) : 0
        puts "Please confirm the information entered in this week's budget:"
        @weeks.each do |week|
            puts "Income: #{@income}"
            puts "Total Expenses: #{@expenses}"
            puts "Desire savings of: #{@savings}"
        end
    end
    # def self.total_pets
    #     @@total_pets
    # end
    
    # def week
    #     @weeks.length > 0 ? @weeks.income(week, amount) : 0
    # end

    # def to_s
    #     return "Pet: type-#{@type} name-#{@name}"
    # end
end



# dog = Pet.new("dog", "Spike")
# dog.eat(10, "morning")
# puts dog.name
# dog.name = "Roy"
# dog.eat(15, "afternoon")
# dog.eat(10, "dinner")
# dog.display_daily_log