require_relative("./pets")

pet_store = []

#add a dog to the petstore
pet_store << Pet.new("dog", "Roy")
#add a cat to the petstore
pet_store << Pet.new("cat", "Poto")

pet_store.each do |pet|
    puts pet
end

puts "The store currently has #{} pets"