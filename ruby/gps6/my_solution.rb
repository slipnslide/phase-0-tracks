# Virus Predictor

# I worked on this challenge [by myself, with: Jordan].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# Looks for file within current directory
# require looks for a file/path starting at the load path
require_relative 'state_data'

class VirusPredictor
#initialize takes state population and population density and assigns it to instance variables @
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
#Calls predicted_deaths and speed_of_spread methods
  def virus_effects
  puts  "#{@state} will lose #{predicted_deaths} people in this outbreak and will spread across the state in #{speed_of_spread} months.\n\n" 

  end

 private

  
#takes population density state and population gives you a number of deaths based on population depending on population density.
#.floor always rounds down
#prints the state and expected number of deaths in that state.
#the return value of predicted_deaths is nil because print is the last thing evaluated 
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end
  end

#Takes pop_density and state 
#depending on density changes speed at which virus spreads in months.
#puts statement about speed
#returns nil
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end
  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

 def total_states
  STATE_DATA.each do |state, state_information|
    report = VirusPredictor.new(state, state_information[:population_density], state_information[:population])
    report.virus_effects
  end
  return
 end
 total_states



#alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
#alabama.virus_effects

#jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
#jersey.virus_effects

#california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
#california.virus_effects

#alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
#alaska.virus_effects


#=======================================================================
# Reflection Section
#What are the differences between the two different hash syntaxes shown in the state_data file?
##STATE_DATA is a constant, the first "" with states is a key with it's value being another hash with key/value within that.

#What does require_relative do? How is it different from require?
##the difference is where the file starts looking for what you are linking to it. require starts at the path you provide and require_relative starts in your current directory.

#What are some ways to iterate through a hash?
## .each .select .detect .find .sort .include? .each_key .each_value

#When refactoring virus_effects, what stood out to you about the variables, if anything?
## They were originally passing information into the method that didn't need to be passed in because they are all instance variables that can be used anywhere in the class.
## Also the two methods that they gave us printed statements at the bottom and our guide said it would be better to have a seperate method that printed the information and left the methods to just do calculation.


#What concept did you most solidify in this challenge?
## usage of the word private to keep certain methods hidden. Refactoring different areas of code to make it less DRY
## Even tho the gps release said not to do this. Technically you could combine both methods into one because they are both using the same if else statements for their conditions.

