def greeting(name)
  yield(name)
end

greeting("Alec") {|name| puts "Good morning, #{name}!"}

greeting("Benny") {|name| puts "Why good morning to you too, #{name}!"}

#yield stores information as variables such as name or sum, NOT functions such as n * 2.

def two_nums(n1, n2)
  n1 = n1 + 2 #notice how you are chaning n1 here!
  puts "this is before"
  yield(n1, n2) #this calls for the two values in the block later
  puts "This is after the yield"
end

two_nums(23, 5){|n1, n2| puts n1 + n2} #the method two_nums is called, using the arguments block_given
                                       #and then in the {block}, the nums are passed from yield to the
                                       #function and then back to the method! => 30
two_nums(23, 5){|n1, n2| puts n1 / n2}