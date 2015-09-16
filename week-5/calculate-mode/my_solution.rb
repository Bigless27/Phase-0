# Calculate the mode Pairing Challenge

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input? Array
# What is the output? (i.e. What should the code return?) an array of most frequent keys

# What are the steps needed to solve the problem?


#-itterate over the elements in the array and add them to a hash
#-add +=1 to the value of each key itterated into the hash
#-put the largest value(key value) into an array
#-print out the newest array


# 1. Initial Solution

# def mode(text)
#   h=Hash.new(0)
#   return_array = []
#   counter = []
#   text.each do |x|
#   h[x]+=1
#   end
#   h.each do |key, value|
#   if counter.size == 0
#   counter = value
#   elsif counter < value
#   counter = value
#   else
#   next
#   end
#   end
#   h.each do |key, value|
#   if value == counter
#   return_array.push key
#   else
#   next
#   end
#   end
#   return return_array
# end



# 3. Refactored Solution
def mode(text)
  h=Hash.new(0)
  return_array = []
  counter = []
  text.each do |x|
    h[x]+=1
  end
  h.each do |key, value|
  if counter.size == 0
  counter = value
  elsif counter < value
  counter = value

  end
  end
  h.each do |key, value|
  if value == counter
  return_array.push key

  end
  end
  return return_array
end


# 4. Reflection
# My pair and I decided to use hashes and array in our code. We also used empty arrays to use as counters. These counters were also uses for comparisons.
#We were a lot more successful at breaking this code down in pseudocode. I felt that we had more clearly defined steps in this challenge than in last weeks
#The only issue we ran into was finding the length of a fixum which .lenght didn't work. We used .size and that helped get the results we were looking for.
#We used .each when iterating through the content. we defined two variable for the each itterations. When working on the refactoring I did try a couple methods to help shorten up the each, such as putting it on one line with {}. This didn't work unfortunetly. These new ones were difficult to implement because they kept producing errors. The old method of itteration we stuck with because it worked.
