class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(i)
  	puts "Woof!" * i
  end

  def roll_over
  	puts "Rolls Over"
  end

  def dog_years(x)
  dog_year =	x * 7
  puts dog_year
  end

  def play_dead
  	puts "I'm Dead! oh no!"
  end

  #If spelled incorrectly it just won't run no error occurs
  def initialize
  	puts "Initializing new puppy instance ..."
  end
end

dog1 = Puppy.new
dog1.fetch("toy")
dog1.speak(5)
dog1.roll_over
dog1.dog_years(7)
dog1.play_dead





class Cows
  def initialize
  	puts "Initializing new Cow instance ..."
  end

  def milk_the_cow(i)
  	puts "Squirt" * i
  end
  def butcher(meat_type)
  	puts "Slaughtered, Were Eating #{meat_type} tonight"
  end
end

#Loop that creates an array to store new cows 
n = 0
cow_array = []
while n <= 50
cow_array << Cows.new 
puts "cow#{n}"
	
	n += 1
end
p cow_array

#Calls our methods on each new cow we made
cow_array.each do |cow| 
  cow.milk_the_cow(1)
  cow.butcher("Steak")
end


cow1 = Cows.new
cow2 = Cows.new
cow1.milk_the_cow(2)
cow2.butcher("Steak")


