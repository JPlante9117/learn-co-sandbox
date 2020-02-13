#THE HASH

bands = {
  joy_division: %w[ian bernard peter stephen],
  the_smiths: %w[johnny andy morrissey mike],
  the_cramps: %w[lux ivy nick],
  blondie: %w[debbie chris clem jimmy nigel],
  talking_heads: %w[david tina chris jerry]
}
bands.each_pair{ |pair| p pair } #creates untransformed hash

puts
puts

#Looks the same, but deconstructed it into new hash called MEMO
bands.reduce({}) do |memo, pair|
  p memo #first block parameter
  p pair #second block parameter
  memo #return value
end
 
 puts
 puts 
 
 #Broke MEMO down into two parts: key and value.
bands.reduce({}) do |memo, (key, value)|
  p memo #first block parameter
  p key #second block parameter 
  p value #second block parameter
  memo #return value
end

puts
puts

#used the REDUCED band to sort members based on the value
sorted_members = bands.reduce({}) do |memo, (key, value)|
  memo[key] = value.sort
  memo
end

#unsorted
p bands

puts
puts

#sorted 
p sorted_members