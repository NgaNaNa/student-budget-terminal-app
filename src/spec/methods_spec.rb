require_relative '../methods.rb'
# require 'rspec/autorun'



# For Class
    # begin
    #     # Code that could err
    # rescue SomeSpecificError
    #     puts "Some specific error occurred"
    # rescue StandardError
    #     puts "Error occured"
    # end

# Ed Example
# ** Error ** Handling using Rescue
        # def print_num_letters(words)
        #     words.each do |word|
        #     begin
        #         puts "The word #{word} has #{word.length} letters in it."
        #     rescue
        #         puts "#{word || 'nil'} is not a valid value"
        #     end
        #     end
        # end
  
        # # nil and numbers are not valid
        # print_num_letters(['dog',nil,'cat',4,'bird'])

        # #Output
        # [user@sahara ~]$ ruby print_num_letters.rb
        # The word dog has 3 letters in it.
        # nil is not a valid value
        # The word cat has 3 letters in it.
        # 4 is not a valid value
        # The word bird has 4 letters in it.
