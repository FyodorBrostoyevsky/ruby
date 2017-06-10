puts "Give me some words."
words = 'words1'
array = []

while words != ''
  words = gets.chomp
  array.push words
end

puts array.sort
