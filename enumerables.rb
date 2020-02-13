puts "[1,2,3].all?{ |num| num > 0 } asks if all numbers are > 0"
puts [1,2,3].all?{ |num| num > 0 } #all? returns true if ALL are true. All values are true therefore it will return TRUE
puts
"[-1,2,3].all?{ |num| num > 0 } asks if all numbers are > 0"
puts [-1,2,3].all?{ |num| num > 0 } #-1 is not true, therefore the all? will return FALSE
puts
puts "[-1,2,3].any?{ |num| num > 0 } asks if any number is > 0"
puts [-1,2,3].any?{ |num| num > 0 } #any? returns true if ANY are true. Since two of the three are true, it will return TRUE
puts
puts "[1,2,3].collect{|num| num*10} is the same as MAP"
puts [1,2,3].collect{|num| num*10} #collect is a synonym for map
puts
puts "[-6,2,3].count{|num| num > 0} asks how many values are true"
puts [-6,2,3].count{|num| num > 0} #count sees how many of the values are truthy
puts
puts "[1,2,3].detect{|num| num > 1} asks which VALUE satisfies the {block} first"
puts [1,2,3].detect{|num| num > 1} #detect sees which element satisfies the {block} FIRST and returns that VALUE. synonym with FIND
puts
puts "[1,2,3].find_all{|num| num > 1} asks for all values that satisfy the {block}"
puts [1,2,3].find_all{|num| num > 1} #find_all sees all values that satisfies the {block}, not just the first.
puts
puts "[1,2,3].find_index{|num| num > 1} asks for the FIRST index that satisfies the {block}"
puts [1,2,3].find_index{|num| num > 1} #find_index selects the first index that satisfies the {block}.
puts
puts "[1,29999,4].max needs no {block}! It returns the max value"
puts [1,29999,4].max #notice no block! It'll just return the max value
puts
puts ["pneumoultramicroscopicsilicovolcanoconiosis", "milk", "astronaut"].max_by{|x| x.length} #max, but with a {block} giving a specific perameter
puts
puts "[-199, 20, -66].min functions just like MAX"
puts [-199, 20, -66].min #gives the min!
puts
puts "[0, -7, 3, -49].sort sorts alphabetically or by smallest number!"
puts [0, -7, 3, -49].sort #sorts alphabetically or by smallest number!
puts ["zebra", "cow", "balloon"].sort #Be careful with capital! It technically sorts A-Z a-z. If Zebra is capital, it will occur FIRST!!
puts
puts ".each is best used when you need to enumerate data, but are NOT changing data. Otherwise, there are better methods. USE ONLY IF NOT SURE IF MAP OR REDUCE"
oppressed_workers = ["Dopey", "Sneezy", "Happy", "Angry", "Doc", "Lemonjello", "Sleepy" ]
oppressed_workers.each do |oppressed_worker|
  puts "#{oppressed_worker.capitalize} wants to start a union!"
end