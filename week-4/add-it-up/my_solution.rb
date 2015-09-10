# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [by myself, with: ].

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input: [1,2,3,4,5]
# Output: 15
# Steps to solve the problem.
#-create an array
#-calculate the sum of all the numbers in the array


# 1. total initial solution
def total (x)
  return x.inject (0) {|acc,n| acc+n}
end
total([1,2,3,4,5])



# 3. total refactored solution
# Got it the first time! No errors!





# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input: ["coding","is","easy"]
# Output: Coding is easy
# Steps to solve the problem.
#-creat an array made up of strings
#-concatenate the elements of the array together
#-capitalize the first word of the array and add a period on the end



# 5. sentence_maker initial solution
def sentence_maker (x)

 merge= x.join(' ')
 upper= merge.capitalize
 puts upper + '.'


end
sentence_maker(["all", "my", "socks", "are", "dirty"])


# 6. sentence_maker refactored solution

