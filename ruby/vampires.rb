puts "What is your name?"
name = gets.chomp
puts "How old are you?"
yearsold = gets.chomp
puts "What year were you born?"
year = gets.chomp
current_year = "2016"
age = "current_year - #{year}" 
puts "Our company cafeteria serves garlic bread. Should we order some for you?" (y/n)
bread = gets.chomp
puts "Would you like to enroll in the company’s health insurance?"(y/n)
insurance = gets.chomp
if age != yearsold
