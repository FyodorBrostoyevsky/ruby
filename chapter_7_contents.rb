contents = ["Table of Contents", "Chapter 1: Numbers", "Chapter 2: Letters", "Chapter 3: Variables", "page 1", "page 72", "page 118"]
linewidth = 40
x = 0
while x < contents.length
  if contents[x][0..4].upcase == "TABLE"
    puts contents[x].center linewidth
    contents.shift
  elsif contents[x..x+2].sort
    puts contents[x+1]
    puts contents[x+2]
    puts contents[x+3]
  end
  x += 1
end
