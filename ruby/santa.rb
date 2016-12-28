class Santa
	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(str)
		puts "That was a good #{str}!"
	end

	def initialize
	  puts "Initializing Santa instance ..."
	end


end
santa1 = Santa.new
santa1.speak
santa1.eat_milk_and_cookies("snickerdoodler")
santa2 = Santa.new
santa2.eat_milk_and_cookies("chocolate")