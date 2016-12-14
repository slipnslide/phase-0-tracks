#ask user for information 
#"name" "age" "number of children" "decor theme" "likes design"
#store information in symbols

#create a hash
#Leaving nil as base value until information is entered.
client_data = {
 name: nil ,
 age: nil ,
 number_of_kids: nil ,
 decor_theme: nil,
 likes_design: nil ,

}
puts "what is your name?"
client_data[:name] = gets.chomp
puts "how old are you?"
client_data[:age] = gets.chomp.to_i
puts "Do you have children? How many?"
client_data[:number_of_kids] = gets.chomp.to_i
puts "What type of theme do you like?"
client_data[:decor_theme] = gets.chomp
puts "Do you like good designs? Y/N"
likes = gets.chomp
if likes = "Y"
	client_data[:likes_design] = true
elsif likes = "N"
	client_data[:likes_design] = false
else
	puts "You Messed up real bad"
end
#print values of the information user has input
p client_data.values

#give user option to update information or type "NO" to skip
puts "Would you like to update anything? If not type 'NO'"
client_response = gets.chomp
#if else statement if answer doesn't equal NO
if client_response != "NO"

#ask user what they would like to update

puts "What key you like to update?"
p client_data.keys
key = gets.chomp.to_sym

#ask user for new information
puts "What information about #{key} would you like to update?"
value = gets.chomp
#end if else statement
end
#update the new key
client_data[key] = value
#print updated hash
puts client_data.values




