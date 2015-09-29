# Virus Predictor

# I worked on this challenge [by myself, with: Nathan Park].
# We spent [1] hours on this challenge.

# EXPLANATION OF require_relative
#For the file that the require_relative is defined on, It makes available all content on the file it references.
#Require_relative defines a path for ruby to find the file it references, relative to the file that require_relative is being defined on. Require starts at the beginning of you computers home file and needs an explicit path.

require_relative 'state_data'

class VirusPredictor

  #Defines the parameters that will be passed into the class and then defines these parameters as instance variables.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  #Calls upon two methods with the instance variables put in as the parameters of the methods.
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private

  #Takes the hash values from STATE_DATA and inputs them into this method as parameters. Runs flow control on the parameters to determine what type of operations to run on that specified parameter. Finally, it prints out a statement. Predicts number of deaths.
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

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  #Takes the initialized values and runs flow control on them. The methods uses a specified type of operation depending on what if statement returns true. Prints the data. Predicts speed of spread.
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.


    if @population_density >= 200
      speed = 0.5
    elsif @population_density >= 150
      speed = 1
    elsif @population_density >= 100
      speed = 1.5
    elsif @population_density >= 50
      speed = 2
    else
      speed = 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects


STATE_DATA.keys.each do |state_name|
  display = VirusPredictor.new(state_name,STATE_DATA[state_name][:population_density],STATE_DATA[state_name][:population])
  display.virus_effects
end



#=======================================================================
# Reflection Section
#-The differences between the two hashes in the state_data file are defined using two different methods. One key is defined using a string and =>. The other key is defined using a symbol.
#-For the file that the require_relative is defined on, It makes available all content on the file it references.
#Require_relative defines a path for ruby to find the file it references, relative to the file that require_relative is being defined on. Require starts at the beginning of you computers home file and needs an explicit path.
#-Ways to itterate through a hash are each,and map.
#-What stood out to me in the virus_effects method is that we were passing arguments into methods that weren't referencing those parameters but the instance variables defined in the initializer.
#-The concept I most solidified in this challenge was variable scope.
