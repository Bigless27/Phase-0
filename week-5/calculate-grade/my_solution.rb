# Calculate a letter grade!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [by myself, with: ].

# 0. Pseudocode

# What is the input? An array of grades
# What is the output? (i.e. What should the code return?) an array that calculates the average of the grades and returns the letter grade
# What are the steps needed to solve the problem?
#-use a method to get the sum of the array
#-divide that number by the length of the array
#-put that number through flow control if statement to figure out what letter grade should be returned.
#-Print that letter grade.


# 1. Initial Solution
# def get_grade(scores)
#   sum1=scores.inject{|sum,x| sum + x }
#   average=sum1 / scores.length

#   if average > 100
#     return "you scored over 100%"
#   elsif average > 90
#     return "A"
#   elsif average > 80
#     return "B"
# end


# 3. Refactored Solution
def get_grade(scores)
  sum1=scores.inject{|sum,x| sum + x }
  average=sum1 / scores.length

  case average
    when 90..100
      return "A"
    when 80..90
      return "B"
    when 70..80
      return "C"
    when 60..70
      return "D"
    else
      return "F"
  end
end


# 4. Reflection