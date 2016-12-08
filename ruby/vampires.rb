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


puts "Would you like to enroll in the company’s health insurance? (y/n)?"
insurance = gets.chomp




 if "#{age}" == "#{yearsold}" && "#{bread}" == "y" && "#{insurance}" == "n"
	 puts "Probably not a vampire."
	elsif "#{age}" != "#{yearsold}" && ("#{bread}" == "y" || "#{insurance}" == "n")
	 puts "Probably a vampire."
	elsif "#{age}" != "#{yearsold}" && ("#{bread}" == "n" || "#{insurance}" == "y")
	 puts "Probably a vampire."
	elsif "#{age}" != "#{yearsold}" && ("#{bread}" == "n" && "#{insurance}" == "n")
	 puts "Almost certainly a vampire."
	elsif "#{name}" == "Drake Cula ; Tu Fang" && !("#{age}" != "#{yearsold}" && "#{bread}" == "n" && "#{insurance}" == "n")
		puts "definitely a vampire"
	else
		puts "Results Inconclusive"
		
	end




	

	
