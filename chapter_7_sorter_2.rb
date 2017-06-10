puts "Give me some words."
words = 'words1'
array = []
holder = []

while words != ''
  words = gets.chomp
  array.push words
end

i = 1
while i < array.length
  if array[i][0] < array[i - 1][0]
    holder.push array[i]
    array.delete_at(i)
  end
end

puts array
puts words
