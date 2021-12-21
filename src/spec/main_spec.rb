require_relative "../main.rb"

# Things to test for
# 1. user_name must put in a name or a string to be identified with
#    Must not be a nil
# 2. "income, expenses, savings" - must not be nil, must numbers greater than or equal to 0


# rspec test in rspect file, validates the specified error

# 1. user_name must put in a name or a string to be identified with
#    Must not be a nil
describe "user_name" do
    it "Must be a string value" do
        expect(menu_calc_start_exit()).to be true
    end
end