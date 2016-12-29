#module Shout
 # def self.yell_angrily(words)
  #  words + "!!!" + " :("
  #end
 # def self.yelling_happily(words)
 # 	words + "!!!!" + " =]"
 # end

#end
#p Shout.yelling_happily("Yay!")
#p Shout.yell_angrily("GRRRRR")

module Shout
	def Angry_driver(words)
		words + " How are you so bad at driving!!!!!!"
	end
	def Happy_driver(words)
		words + " Have a nice day!"
	end

end


class Driver
	include Shout
end

class Other_driver
	include Shout
end

driver1 = Driver.new
driver2 = Other_driver.new

p driver1.Angry_driver("I just don't understand...")
p driver2.Happy_driver("You are an amazing person!")

