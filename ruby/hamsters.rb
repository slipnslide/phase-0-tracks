puts "What is your hamsters name?"
name = gets.chomp
puts "your hamsters name is #{name}"

puts "How noisy is your hamster? (1-10)"
volume = gets.chomp
volume.to_i(base=10)
puts "#{volume}"

puts "What is your hamsters fur color"
color = gets.chomp
puts "#{color} is really cool"

puts "Is your hamster a good candidate for adoption (y/n)"

	adoption = gets.chomp
  if adoption == "y"
	adoption = true
  elsif adoption == "n"
	adoption = false
  else
	adoption = nil
 end


puts "#{adoption}"

puts "What is the estimated age of your hamster?"
age = gets.chomp
if age.empty?
	nil
else 
	age = age.to_i
end
p age


