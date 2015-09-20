# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input? An integer
# What is the output? (i.e. What should the code return?) A string with commas in it at every third character
# What are the steps needed to solve the problem?
#First I will take the integer and I will turn it inot a string

# 1. Initial Solution
def separate_comma(number)
  a = number.to_s.split('')
  b = a.size/3.0
  if a.size < 4
    p number.to_s
  elsif a.size%3 == 0
    n = -4
    (b.to_i-1).times do |i|
      a.insert(n, ',')
      n -= 4
    end
    p a.join("")
  else
      n = -4
    b.to_i.times do |i|
      a.insert(n, ',')
      n -= 4
    end
  p a.join("")
  end
end



# 2. Refactored Solution




# 3. Reflection