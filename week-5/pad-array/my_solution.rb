# Pad an Array

# I worked on this challenge [by myself, with: ]

# I spent [1] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input? Array, minimum value of the length of the array, and the value to input into the array.
# What is the output? (i.e. What should the code return?) A padderd array with the specified parameters added on to it.
# What are the steps needed to solve the problem?

#Destructive
#-minimum size value provide and subtract it from the array parameter.
#-Create a new array with the value as the elements. The array will repeat that element the amount of times as the min_value specifiec.
#concatenate the arrays together.

#Non-Destructive
#- creat a new variable to store the array in
#-repeat all steps in the destruction method




# 1. Initial Solution
# def pad!(array, min_size, value = nil)
#   length= min_size-array.length
#   if length <= 0
#     puts array
#   end
#   if value == nil
#     svalue= 'nil'
#   else
#     svalue = value
#   end


#   p svalue
#   space=svalue.to_s+ " "
#   space*length
#   new_array=space.join(" ")
#   puts array + new_array


# end

# def pad(array, min_size, value = nil) #non-destructive
#   # Your code here
# end
# pad!([1,2,3],5)

# 3. Refactored Solution
def pad(array,min_size,value=nil)
  return pad!(array.clone,min_size, value)

end

def pad!(array,min_size,value=nil)
  return array.fill(value, array.length...min_size)
end
#Boom


# 4. Reflection
#- I thought that we were very successful breaking this challenge down into small steps.
#- We were able to translate most of our Pseudo code into actual code, but unfortunetly our original thought process didn't work how we wanted it to.
#- I believe our initial solution failed almost every test. I believe it failed the test because we where trying to call methods on objects that didn't contain them.
#- Refactoring brough light to this problem. Crazy what a little research can do. I found great built in methods to support padding.
#- My soulution I believe is either the most optiamal to solve this challenge or a close second.
#- A destructive method when called upon changes the value of the variable so when the original variable is called upon again it is changed. Non-destructive wont change the original variable so when it is called upon again it wont change.












def pad(array,min_size,value=nil)
  return pad!(array.clone,min_size, value)

end

def pad!(array,min_size,value=nil)
  return array.fill(value, array.length...min_size)
end












