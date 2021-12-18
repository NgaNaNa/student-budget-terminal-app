require_relative '../methods.rb'

describe "" do
    it "" do
        expect()
    end
end


begin
    # Code that could err
rescue SomeSpecificError
    puts "Some specific error occurred"
rescue StandardError
    puts "Error occured"
end