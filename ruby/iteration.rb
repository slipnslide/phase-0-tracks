def hey 
  puts "hey there"
  3.times {yield ("Ryan")}
  puts "bye now"
end 

hey { |name| puts "This is working great, #{name}"}

names = ["a", "b", "c", "d", "e" ]
names_hash = {"a" => "aye", "b" => "bee", "c" => "sea"}

p names
names.each { |letter| puts "#{letter}"}

p names

names.map! do |letter|  
  letter.next.next
end 
p names

p names_hash
names_hash.each do |letter, phonetic|
  puts "#{letter} sounds like #{phonetic}"
end 

# Release 2:

#1. array: delete numbers in array greater than 5
number_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

p number_array
number_array.delete_if { |number| number < 5}

p number_array


#1. hash 
#NONE OF THIS CODE WORKS HOW IT SHOULD

number_hash = {1 => "one", 2 => "two", 3 => "three", 4 => "four", 5 => "five", 6 => "six"}
p number_hash
number_hash.each { |number| puts number}
number_hash.delete_if { |number| number <= 4 }
p number_hash


# 2.  array 
letter_array = ["a", "b", "c", "d", "e", "f", "g"]
p letter_array
letter_array.keep_if { |letter| letter < "e"}

p letter_array

# 2. hash. 

number_hash = {1 => "one", 2 => "two", 3 => "three", 4 => "four", 5 => "five", 6 => "six"}
p number_hash
number_hash.keep_if { |number| number <= 4 }
p number_hash

# 3. array

# filter a structure for data satisfying a certain condition
# using a different method than above

word_array = ["Colossus", "Satisfying", "box", "Humble", "modest", "coding", "lay"]
p word_array

word_array.include?("box")

p word_array

# 3. hash

number_hash = {1 => "one", 2 => "two", 3 => "three", 4 => "four", 5 => "five", 6 => "six"}
p number_hash

number_hash.reject! { |key| key < 3 }

p number_hash

# 4. array. 

word_array = ["Colossus", "Satisfying", "box", "Humble", "modest", "coding", "lay"]
p word_array
new_word_array = []

new_word_array = word_array.drop_while { |word| word != "box"}
p new_word_array
p word_array

# 4. hash. 

number_hash = {1 => "one", 2 => "two", 3 => "three", 4 => "four", 5 => "five", 6 => "six"}
p number_hash

p number_hash.has_key?(1)

