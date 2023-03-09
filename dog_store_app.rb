class Dog
  attr_accessor :price

  def initialize(input_options)
    @id = input_options[:id]
    @name = input_options[:name]
    @breed = input_options[:breed]
    @age = input_options[:age]
    @price = input_options[:price]
  end

  def read
    return puts "ID: #{@id}\nName: #{@name}\nBreed: #{@breed}\nAge: #{@age}\nPrice: #{@price}"
  end
end

index = 0
dogs = []
while true
  puts "--------------------------------------------------"
  puts "DOG STORE"
  puts "--------------------------------------------------"
  dogs.each do |dog|
    puts dog.read
  end
  puts "--------------------------------------------------"
  puts "[C]reate [R]ead [U]pdate [D]elete [Q]uit"
  input = gets.chomp
  if input.downcase == "c"
    puts "First Name: "
    name_input = gets.chomp
    puts "Breed: "
    breed_input = gets.chomp
    puts "Age: "
    age_input = gets.chomp
    puts "Price: "
    price_input = gets.chomp
    id = index + 1
    dogs << Dog.new({ id: id, name: name_input, breed: breed_input, age: age_input, price: price_input })
    index = index + 1
  elsif input.downcase == "r"
    puts "ID: "
    input = gets.chomp
    puts "--------------------------------------------------"
    puts dogs[input.to_i - 1].read
    sleep(15) #pause for 30 seconds to let the user view the information
  elsif input.downcase == "u"
    puts "ID: "
    input = gets.chomp
    puts "New price: "
    new_price = gets.chomp
    dogs[input.to_i - 1].price = new_price
  elsif input.downcase == "d"
    puts "ID: "
    input = gets.chomp
    dogs.delete_at(input.to_i - 1)
  elsif input.downcase == "q"
    puts "Goodbye!"
    break
  else
    puts "Invalid input. Try again."
    sleep(2)
  end
end
