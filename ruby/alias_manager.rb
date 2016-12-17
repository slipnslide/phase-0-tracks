# create a method to change vowel to next vowel
def next_vowel(v)
	str = "aeiou"
	num = str.index(v)
	if num != 4
		num += 1
	else
		num = 0
	end
	new_vowel = str[num]
end
#check to see if output is correct
# p next_vowel("i")

# create a method to change constant to next constant
def constant(c)
	str = "bcdfghjklmnpqrstvwxyz"
	num = str.index(c)
	#set != to 20 otherwise z returns nil
	if num != 20
		num += 1
	else
		num = 0
	end
	new_constant = str[num]
end
#check to see if output is correct

# p constant("z")


#method that takes a string
#split the string and swaps first and last name
#downcase the string .downcase "downcase is a string method only"
#check for vowels in the string and if there are change them to the next vowel
#check rest of string for constants
#change every constant to next constant
#capitalize name .capitalize! "capitalize is a string method only"
#rejoin the string with a space " " last_name first
#print final name
#incorporate previous methods into a name_flipper method
def name_flipper(name)
	new_name = name.downcase.split(" ")
	first_name = ""
	x = 0
	while x < new_name[0].length
		#check for vowels in the string
		#change every vowel to next vowel
		if "aeiou".include? new_name[0][x]
			first_name = first_name + next_vowel(new_name[0][x])
			x += 1
		else
		  #change every constant to next constant
			first_name = first_name + constant(new_name[0][x])
			x +=1
		end
	end
	#debug
# p first_name

	last_name = ""
	n = 0
	while n < new_name[1].length
		#check for vowels in the string
		#change every vowel to next vowel
		if "aeiou".include? new_name[1][n]
			last_name = last_name + next_vowel(new_name[1][n])
			n += 1
		else
			#change every constant to next constant
			last_name = last_name + constant(new_name[1][n])
			n += 1
		end
	end
	#debug
# p last_name

#capitalize the name
first_name = first_name.capitalize!
last_name = last_name.capitalize!
#join last_name and first_name with a space
new_name = last_name + " " + first_name
end
#check to see if Felicia Torres works
#p name_flipper("Felicia Torres")



# ASK FOR USER INPUT
#Take spy's real name
puts "Real name to change?"
real_name = gets.chomp
new_hash = {}
while real_name != "quit"
	name_flipper(real_name)
	new_hash.store(real_name, name_flipper(real_name))
#puts new_hash
puts "Don't like your name? try a different name! or type quit!"
real_name = gets.chomp

end
#print new name
new_hash.each {|name, final| puts "#{name} you are now #{final}!"}



