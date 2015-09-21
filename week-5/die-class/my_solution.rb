# Die Class 1: Numeric

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# 0. Pseudocode

# Input:number of side for the die to have
# Output:the number of side and a random number in the range of one-number of sides
# Steps:
#-First in the initializer I created an instance variable to keep track of an array
#-This array will contain numbers from 1 to however many sides the specify. use range
#-I will also use an if statement to take care of if the sides being inputed is less than one.
#-I will raise an ArgumentError for this.
#-for the number of sides I will return the @array with a .length method after it
#-For the roll method I will use the shuffle method to shuffle all the elements in the @array element.
#-Next I will take the shuffled arrray and return the first element of that.



# 1. Initial Solution

# class Die
#   def initialize(sides)

#     @array=*(1..sides)
#     if sides <1
#       raise ArgumentError
#     end


#   end

#   def sides
#     return @array.length
#   end

#   def roll
#   @random= @array.shuffle
#   return @random[0]
#  end
# end


# 3. Refactored Solution
class Die
  def initialize(sides)

    @array=*(1..sides)
    if sides <1
      raise ArgumentError
    end


  end

  def sides
    return @array.length
  end

  def roll
  return @array.sample
 end
end






# 4. Reflection
#-An argument error is when you don't provide the right number of arguments for a method, or your providing to many arguments for a method.
#I would use an argument error to account for a difference in parameters or input so I can help debug code eaiser.
#-The most notable ruby method I used was the .sample method.
#-A ruby class is a collection of methods that can all easily be called upon by usign the class.
#-I would use a ruby class use multiple methods on an instance. This also is the optimal way to do this
#-A local variable is only availalable for use inside the parameter you put it in. If you specifed it in a method then you can't call upon it outside the method.
#A instance variable is a variable that is available in class and creates copys when it is called upon so you don't change the original variable. A local variable can be changed.
#-An instance variable cna be used in a class so you can call upon it multiple times in different methods.
