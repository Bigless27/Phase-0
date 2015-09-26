# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input:an array of srtings
# Output:number of side or a random string from the array of strings
# Steps:
#make lables available as an instance variable.
#use the length method for the side portion. And use sides in the initializer to help raise an argument error if there are the wrong number of sides.
#Use the shuffle method in roll to randomize the array of strings and return the string in the 0 index of that array.


# Initial Solution

class Die
  def initialize(labels)
    @lables= lables
    if sides <1
      raise ArgumentError
    end
  end

  def sides
    return @lables.length
  end

  def roll
    return @lables.sample
  end
end



# Refactored Solution
#After researching the topic the only thing I can think to add are attr instances to the class. However, with the already predefined methods I will stick with my initial soution







# Reflection
#-The only thing different is that I didn't need to define an array of a specified length for this one
#I really didn't need to change any logic to tackle this challenge.
#-What this exercise taught me about making my code eaisly modifiable was to mkae sure that your code is very eaisly readable. Without that it will be hard to make any slight changes to it
#-I didn't learn any new methods while working on this challenge.
#-I didn't solidify anything new in this challenge about classes.
