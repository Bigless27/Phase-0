# PezDispenser Class from User Stories

# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.


# 1. Review the following user stories:
# - As a Pez user, I'd like to be able to "create" a new Pez dispenser with a group of flavors that
#      represent Pez so it's easy to start with a full Pez dispenser.
# - As a Pez user, I'd like to be able to easily count the number of Pez remaining in a dispenser
#      so I can know how many are left.
# - As a Pez user, I'd like to be able to take a Pez from the dispenser so I can eat it.
# - As a Pez user, I'd like to be able to add a Pez to the dispenser so I can save a flavor for later.
# - As a Pez user, I'd like to be able to see all the flavors inside the dispenser so I know the order
#of the flavors coming up.


# Pseudocode
#-set an initilizer method to take the an input of the amount of pex and set it equal to a value
# -Set up a count method that counts the length of the pez array
# -Set up a add mehtod that adds an inputed value to the end of the arrat with a push method.
# -Set up a remove method that removes one of the values from the @pez array
# -Finally, set up a function that returns the @pez array so the user may see what flavors are still in the array.



# Initial Solution

# class PezDispenser

#   def initialize(pez)
#     @pez=pez
#   end

#   def see_pez()
#     return @pez
#   end

#   def remove_pez()
#     @pez=@pez.remove()
#     return @pez
#   end

#   def add_pez(value)
#     @pez=@pez << value
#     return @pez
#   end

#   def count()
#     return @pez.length
#   end

# end



# Refactored Solution
class PezDispenser
  attr_accessor :see_all_pez
  def initialize(pez)
    @pez=pez
    @see_all_pez=@pez
  end

  def get_pez()
    @pez=@pez.reverse.pop()
    return @pez
  end

  def add_pez(value)
    @pez=@pez << value
    return @pez
  end

  def pez_count()
    return @pez.length()
  end

end






# DRIVER TESTS GO BELOW THIS LINE

flavors = %w(cherry chocolate cola grape lemon orange peppermint raspberry strawberry).shuffle
super_mario = PezDispenser.new(flavors)
puts "A new pez dispenser has been created. You have #{super_mario.pez_count} pez!"
puts "Here's a look inside the dispenser:"
puts super_mario.see_all_pez
puts "Adding a banana pez."
super_mario.add_pez("banana")
puts "Now you have #{super_mario.pez_count} pez!"
puts "Oh, you want one do you?"
puts "The pez flavor you got is: #{super_mario.get_pez}"
puts "Now you have #{super_mario.pez_count} pez!"




# Reflection
#-Concepts that I reviewed in this challenges were classes and the ability to reassign a instance varaible.
#I also made sure the get pez method worked like a real pez dispenser and took a pez that was the first item in the list.
#-I am still a little shaky on accessing really nested values
#-Review all of the ruby exercises and think about how I would solve them becasue I unfortunetly wont have time to solve them all.