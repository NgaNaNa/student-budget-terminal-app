class Menu
    #Present user with options to select.
    menu_calc_start_exit = prompt.select("Please choose one of the following:".green) do |menu|
        menu.choice "Calculate_Budget"
        menu.choice "Start_Over"
        menu.choice "Exit"
    end

    if menu_calc_start_exit == "Calculate_Budget"
        calc_outcome = calc_budget(weekly_budget[0], weekly_budget[1], weekly_budget[2])
    elsif menu_calc_start_exit == "Start_Over"
        weekly_budget = input_budget(user_name)
    elsif menu_calc_start_exit == "Exit"
        exit(true)
    else
        puts "Please choose available options only".green
    end
end