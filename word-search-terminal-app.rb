matrix = [
  ["N", "K", "Y", "A", "G", "S", "J", "F", "Q", "B"],
  ["U", "L", "G", "T", "T", "I", "J", "Q", "R", "R"],
  ["S", "H", "W", "L", "H", "M", "K", "I", "V", "X"],
  ["Q", "W", "P", "A", "T", "E", "S", "J", "X", "T"],
  ["N", "H", "J", "S", "W", "T", "S", "Q", "U", "G"],
  ["T", "E", "K", "C", "O", "R", "H", "N", "A", "E"],
  ["O", "R", "Q", "L", "X", "A", "E", "B", "Y", "B"],
  ["O", "T", "S", "L", "A", "U", "N", "C", "H", "J"],
  ["A", "P", "Y", "O", "Z", "Q", "O", "P", "N", "L"],
  ["A", "J", "G", "L", "H", "C", "Y", "B", "U", "I"],
]

# answer key for ATLAS
word1 = matrix[0][3] + matrix[1][3] + matrix[2][3] + matrix[3][3] + matrix[4][3]
# answer key for ROCKET
word2 = matrix[5][5] + matrix[5][4] + matrix[5][3] + matrix[5][2] + matrix[5][1] + matrix[5][0]
# answer key for BRISTOL
word3 = matrix[0][9] + matrix[1][8] + matrix[2][7] + matrix[3][6] + matrix[4][5] + matrix[5][4] + matrix[6][3]
# answer key for LAUNCH
word4 = matrix[7][3] + matrix[7][4] + matrix[7][5] + matrix[7][6] + matrix[7][7] + matrix[7][8]
# answer key for ARTEMIS
word5 = matrix[6][5] + matrix[5][5] + matrix[4][5] + matrix[3][5] + matrix[2][5] + matrix[1][5] + matrix[0][5]

# creating puzzle menu
puts "WORD SEARCH:"
puts "------------------------"
index = 0
while index < matrix.length
  row = matrix[index].join(" ")
  puts row
  index = index + 1
end
puts "------------------------"
puts "     Word List:"
puts "#{word1} #{word2} #{word3}"
puts "#{word4} #{word5}"
puts "------------------------"

# ask for user input
puts "what word did you find?"
word_input = gets.chomp

word_guess = [[], []]
index = 0
while index < word_input.length
  puts "Enter the row for the #{index + 1} letter"
  row = gets.chomp
  puts "Enter the column for the #{index + 1} letter"
  column = gets.chomp
  word_guess[0] << row
  word_guess[1] << column
  index = index + 1
end

#p word_guess returns [["0", "1", "2", "3", "4"], ["3", "3", "3", "3", "3"]]
