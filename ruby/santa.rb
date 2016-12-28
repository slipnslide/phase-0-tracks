class Santa
	#getter and setter methods refactored
	attr_reader :ethnicity
	attr_accessor :gender, :age

#initialize method
	def initialize(gender, ethnicity)
	  puts "Initializing Santa instance ..."
	  @gender = gender
	  @ethnicity = ethnicity 
	  @age = 0
	  @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
	end
#speak method that says "Ho, ho, ho! Haaaappy holidays!"
	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end
#cookie method that takes a string and returns "That was a good #{cookie}!"
	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie}!"
	end
#celebrate_birthday should age Santa by one year.
	def celebrate_birthday
		@age += 1
	end
#get_mad_at can take a reindeer's name as an argument, and move that reindeer in last place in the reindeer rankings
	def get_mad_at(reindeer_name)
		@reindeer_ranking.delete(reindeer_name)
		@reindeer_ranking << reindeer_name
	end

end


#driver code
santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

100.times do 
#found .sample in ruby doc which allows an element to be chosen randomly from an array
  santa = Santa.new(example_genders.sample, example_ethnicities.sample)
  #randomly select an age 0-140
  santa.age= (rand(140))
  #If you want to shovel santa back into an array
  #santas << santa
  p santa
end


#old test code
#santa1 = Santa.new
#santa1.speak
#santa1.eat_milk_and_cookies("snickerdoodler")
#santa2 = Santa.new
#santa2.eat_milk_and_cookies("chocolate")

#test code
#santa3 = Santa.new("gender fluid", "Mystical Creature (unicorn)")
#santa3.get_mad_at("Vixen")
#santa3.celebrate_birthday
#santa3.gender = "agender"
#p santa3.age
#p santa3.ethnicity
#p santa3

#old getter and setter methods

#Add two "getter" methods as well:
#The @gender attribute should have a setter method that allows 
# @gender to be reassigned from outside the class definition.

#getter method for age and ethnicity

#	def age
#		@age
#	end

#	def ethnicity
#		@ethnicity
#	end

	#setter method for gender
#	def gender=(new_gender)
#		@gender = new_gender
#	end