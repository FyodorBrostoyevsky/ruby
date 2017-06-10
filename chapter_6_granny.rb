puts "Hello. How have you been?"
words = gets.chomp

if words != "BYE"
  while words != "BYE"
    if words == words.upcase
      year = rand(21) + 1930
      puts "No no. Not since #{year}!"
      words = gets.chomp
    else
      puts "Could you speak a bit louder?"
      words = gets.chomp
    end
  end
else
  count = 1
  while count < 3
    puts "HUH. SPEAK UP"
    words = gets.chomp
    if words == "BYE"
      count = count + 1
    else
      count = 0
    end
  end
end
