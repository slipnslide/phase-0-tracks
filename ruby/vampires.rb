puts "How many employees will be processed today?"
x = gets.chomp.to_i
until x == 0


  puts "What is your name?"
  name = gets.chomp

  puts "How old are you?"
  age = gets.chomp
    
  puts "What year were you born?"
  year = gets.chomp



  current_year = 2016
  yearsold = current_year - year.to_i


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

   if "#{yearsold}" == "#{age}" && ("#{bread}" && "#{insurance}")
	   puts "Probably not a vampire."
  	elsif ("#{yearsold}" == "#{age}" && "#{bread}") || "#{insurance}"
	   puts "Probably a vampire."
	  elsif ("#{yearsold}" == "#{age}" && "#{insurance}") || "#{bread}"
	   puts "Probably a vampire."
	  elsif ("#{yearsold}" != "#{age}" && "#{bread}") || "#{insurance}"
	   puts "Probably a vampire."
  	elsif ("#{yearsold}" != "#{age}" && "#{insurance}") || "#{bread}"
	   puts "Probably a vampire."
    elsif "#{yearsold}" != "#{age}" && ("#{bread}"  && "#{insurance}")
	   puts "Almost certainly a vampire."
	  elsif "#{name}" == ("Drake Cula" || "Tu Fang") && ("#{yearsold}" == "#{age}" && "#{bread}" && "#{insurance}")
	  	puts "definitely a vampire"
  	else
	  	puts "Results Inconclusive"
	end
	x -= 1
end
prints "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
abort("Were outta here")


	

	
