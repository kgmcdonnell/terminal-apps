dictionary = ["cakes", "atlas", "frogs"]
dictionary.sample()

answer = ["r", "e", "s", "d", "s"]
guess = ["*", "*", "*", "*", "*"]
number_of_tries = 0
while true
  puts "Let's Play Wordle! Enter [C]ontinue or [Q]uit."
  response = gets.chomp
  if response.downcase == "c"
    puts "Guess the Wordle in 6 tries.\nRule: Each guess must be a valid 5-letter word"
    puts "-----------------------------------------------"
    while true
      puts "The word is: #{guess.join("")}"
      number_of_tries += 1
      puts "Enter a 5 letter word:"
      word_input = gets.chomp
      word_array = []
      word_array = word_input.split("")
      index = 0
      while index < guess.length
        if word_array[index] == answer[index]
          guess[index] = word_array[index]
        end
        index = index + 1
      end
      if guess == answer || number_of_tries == 6
        break
      end
    end
    if guess == answer
      puts "-----------------------------------------------"
      puts "you win!"
      puts "-----------------------------------------------"
    else
      puts "-----------------------------------------------"
      puts "you lose!"
      puts "-----------------------------------------------"
    end
  elsif response.downcase == "q"
    puts "Goodbye!"
    break
  else
    puts "Invalid Response. Try again."
  end
end
