puts "How many employees will be processed today?"
x = gets.chomp.to_i
until x == 0


  puts "What is your name?"
  name = gets.chomp
  if name == "Drake Cula"
    name = false
    p name
  elsif name == "Tu Fang"
    name = false
    p name
  else
    name = true
    p name
  end
  

  puts "How old are you?"
  age = gets.chomp
    
  puts "What year were you born?"
  year = gets.chomp



  current_year = 2016
  yearsold = current_year - year.to_i
  if "#{yearsold}" == "#{age}"
  yearsold = true
  
  else
    yearsold = false
    
  end


  puts "Our company cafeteria serves garlic bread. Should we order some for you? (y/n)?"
  bread = gets.chomp

  if bread == "y"
   bread = true
  
  elsif bread == "n"
   bread = false
  
  else
    puts "you broke it start over"
  end

  puts "Would you like to enroll in the company’s health insurance? (y/n)?"
  insurance = gets.chomp

  if insurance == "y"
   insurance = true
  
  elsif insurance == "n"
   insurance = false
  
  else
    puts "you broke it start over"
  end
y = "done"
answer = ""
while answer != y
puts "Do you have any alergies? if so list them one at a time. Type done when you are finished"
  answer = gets.chomp
  if answer == 'sunshine'
   puts "Probably a vampire"
   break
  
  end
end


case
when
yearsold == true && bread == true && insurance == true
then puts "Probably not a vampire"
when yearsold == false && (bread == true && insurance == false)
then puts "Probs a vampire"
when yearsold == false && (bread == false && insurance == true)
then puts "Probs a vampire"
when name == false && yearsold == false && bread == false && insurance == false
then puts "Def a vamp"
when yearsold == false && bread == false && insurance == false 
then puts "Almost certainly a vampire"

end

  x -= 1
end
print "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
abort("Were outta here")

	

	
