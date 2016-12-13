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
new_number_array = []

p number_array
p new_number_array
new_number_array = number_array.map do |number| 
  if number > 5
    nil
  else 
    number
  end 
end 

p number_array
p new_number_array


#1. hash 
#NONE OF THIS CODE WORKS HOW IT SHOULD

number_hash = {1 => "one", 2 => "two", 3 => "three", 4 => "four", 5 => "five", 6 => "six"}

number_hash.each do |number, word|
if number < 4
  puts 
else
  puts "#{number} #{word}"
end
end


# filters a structure and keeps data that meets a certain criteria
letter_array = ["a", "b", "c", "d", "e", "f", "g"]

p letter_array
letter_array.map! do |letter|
  if letter < "e"
    letter
  else
    nil
  end
end

p letter_array

# filter a structure for data satisfying a certain condition
# using a different method than above

word_array = ["Colossus", "Satisfying", "box", "Humble", "modest", "coding", "lay"]
p word_array
word_array.each { |word| puts word}

word_array.delete_if { |word| word.length >= 6 }

p word_array
