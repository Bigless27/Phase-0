# Build a simple guessing game


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input:an integer
# Output: an answer if they guessed the correct number
# Steps:
#-make answer an instance variable in intialize
#-in the guess method I will define use if statements to compare the anser to the number
#-return the correct message for each instance
#-use a comparison checker in the solved method I will define


# Initial Solution

# class GuessingGame
#   def initialize(answer)
#     @answer=answer
#   end

#  def guess(guess)
#   case guess
#   when guess < @answer
#     return :low
#   when guess > @answer
#     return :high
#   when guess == @answer
#     return :correct
#   end
# end

# def solved?
#   if guess == :correct
#     return true
#   else
#     return false
#   end
# end
# end



# Refactored Solution

class GuessingGame
  def initialize(answer)
    @answer=answer
  end

 def guess(guess)
  @user_guess= guess
  case
  when @user_guess < @answer
    return :low
  when @user_guess > @answer
    return :high
  when @user_guess == @answer
    return :correct
  end
end

def solved?
  if @user_guess == @answer
    return true
  else
    return false
  end
end
end


# Reflection
#-I method and an instance variable can represent a vacume real well. The method that will be executed every time the vacume is turned on is the suction method is run. The instance variable are used when there is a detachable vacume from the main one. The storage of how to suck up dirt is avaiable for the detachable vacume to use.
#-You shuld use instance variables when you want to make a varable available throughout mehtods in a class.
#-I used a case and when flow control. What happens is that a varaiable is passed through case and hits all the when statements. Whatever when statement returns true first is the one that is returned
#-We probably had to return symbols because they are immutable as compared with strings. We wouldn't want our our guess method to lead the user in the wrond direction if what is reurned is accidently changed.
#-A benefit of using a symbol instead of a string is that it takes less memory to store a symbol than a string.