# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.

# Pseudocode
# -through my research I discoved that for an integer to be
# Apart of the fibonacci sequence if "5 * i^2 +4" or
# "5*i^2 -4" are perfect squares
# -First part of my pseudo code is to define two variable to hold the values of my integer put thorugh those operations
#  -Next I'll use acontrol method with an or statement to decide if one of those to variable is a perfect square. I do this by comparing that number to see if it is equal to the same number rounded.
#  -(No number squared can be a perfect square if it has number in the decimal places.)
#   -If it is a perfect square then I will return true otherwise I will return false



# Initial Solution

# def is_fibonacci?(num)
#   number1= (5*(num**2)+4)
#   number2=(number1-8)
#   check_one=Math.sqrt(number1)
#   check_two=Math.sqrt(number2)

#   if check_one == check_one.round || check_two == check_two.round
#     return true
#   else
#     return false
#   end

# end



# puts is_fibonacci?(234)


# def is_fibonacci?(num)
#   sequence = [0, 1]
#   while num > sequence.last
#     x=sequence[-1]
#     y=sequence[-2]
#     sequence.push(x)
#     sequence.push(y)
#     sequence.push(x + y)
#   end

#   if num == sequence.last
#     return true
#   else
#     return false
# end
# end


# Refactored Solution
#- I could not find an accurate way for the above function to return false for big numbers so I looked for other methods
#-There were big complicated methods I found on how to solve this but I am going to look for an eaiser way.
#-Build an array with the fibonacci sequence looping over and over until the last value is greater than the given number
#-If that number is equal to the specified number than return true. Otherwise return false.
#-For my second initial solution I ran into problems of ruby taking to long to populate an array of very large numbers to check if that number is part of the fibonnaci sequence.

def is_fibonacci?(num)
  sequence = [0, 1]
  while num > sequence.max
    x,y=sequence.pop(2)
#sequence .pop(2) return and array of two values so I set x and y to be equal to those values respectively.
    sequence.push(x)
    sequence.push(y)
    sequence.push(x + y)
  end

  if num == sequence.max
    return true
  else
    return false
end
end




# Reflection
#-A big concept I learned in this challenge is how to determine if a number in ruby is a perfect square. I also learned that ruby may give estimations on big numbers when using a sqrt() function. I also learned how to creat my on loop that will populate a fibonnaci sequence into an array.
#-I feel pretty confident while working in ruby. I understand how to work the syntax and the flow. One thing I struggle with is on hard problems that require #complicated algorithms to solve them it may sometimes be hard for me to translate those pseudocoded steps into actual code.
#- What I am going to study to become the most prepared I can be for Phase 1 is to finish reading the two ruby books and perform a lot of research on new methods in ruby.
#-This was a really hard challenge for me. It took me 5+ hours to finish, and that's only because of my extensive research in the topic. Moreover, I am glad I worked on this challenge first!
