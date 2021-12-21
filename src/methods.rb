require 'colorize'

def positive_outcome_advice(user_name, daily_free_spend, weekly_budget)
    puts "Well done on this week's budget #{user_name}!".white
    puts "You have a free spending allowance of $#{daily_free_spend.round(2)} per day!".white
    puts "You've also managed to put aside $#{weekly_budget[2]}".white
    puts "Exciting news! © Student Budget App will be collaborating with one of the biggest banks to inject actual money transfer features. Stay Tune!".white
end

def negative_outcome_advice()
    puts "Oh Dear! You've reached your maximum spending.".white
    puts "We recommend that you break down your expenses and see what items you can remove that is NOT NEEDED this week.".white
    puts "After that, come back and try the Student Budget App again.".white
    puts "If that isn't possible, perhaps it's time to dip into that savings of yours to get by this week.".white
end

def healthy_outcome_advice(user_name)
    puts "You're doing great #{user_name}! Enjoy your hard earned money.".white
    puts "You're in a good position to stowe some dollars away for that rainy day (A time of need or trouble).".white
end


def budget_advice(weekly_budget, user_name)
    puts "_You've selected to calculate your budget_".cyan
    calc_outcome = calc_budget(weekly_budget[0], weekly_budget[1], weekly_budget[2])

    daily_free_spend = calc_outcome / 7

    # Articles
    # If daily_free_spend > 0, Here is the following advice
    if daily_free_spend >= 0
        positive_outcome_advice(user_name, daily_free_spend, weekly_budget)
    # If daily_free_spend =< 0, Here is the following advice
    elsif calc_outcome < 0
        negative_outcome_advice()
    # If daily_free_spend > 20, Here is the following advice
    elsif daily_free_spend > 20
        healthy_outcome_advice(user_name)
    end
    # ==> EXTRA feature to add later. Use json to bring data in for hash array - List items recommonded to purchase.
end
