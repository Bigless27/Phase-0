# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input? An integer
# What is the output? (i.e. What should the code return?) A string with commas in it at every third character
# What are the steps needed to solve the problem?
#-First I will take the integer and I will turn it into a string
#-After I have turned the integer into a string I will seperate every character of the string into its own element in an array
#-I will then slice each third element of the array and group them together as one element with the each_slice method
#-After I have groups of three elements in my array, I will then use #map to take the group of three elements of three objects each and combine them into on array of three objects like this a=[[1,2,3],[2,3,4]] to this a=[[123],[234]]
#-I will then join the array together on the commas. This will then place a comma after evey element when the array is bring combined together into a string.
########################
#-This didn't work exactly how I wanted it to so in my refactored solution after doing som research I found that the best approach would be to attack the array in reverse. This will elminate the probablem I had with splitting up an odd number of digits in the integer
#-Before I return the string I will reverse it one more time so the number is displayed correctly.




# 1. Initial Solution
# def separate_comma(number)
#   snumber = number.to_s.split('')
#   comma=snumber.each_slice(3).map{|x| x.join("")}.join(",")
#   puts comma

# end




# 2. Refactored Solution
def separate_comma(number)
  snumber = number.to_s.split('')
  comma=snumber.reverse.each_slice(3).map{|x| x.join("")}.join(",")
  return comma.reverse

end



# 3. Reflection
#-my process for breaking down the problem was to test each step I wanted to put in the pseudo code in IRB to see if it worked the way I wanted it to. If it did I would include it in my pseudo code.
#-My pseudo code came pretty close to helping my solve the solution, but I needed to do some additional research to figure out how to solve the problem.
#-In refactoring I saw the .reverse mehtod. It didn't cause any diificulties and in face it actually fixed the errors I was having in my original code by accounting for odd numbers.
#-I irrerated through the solution originally with the .split, .join and the .map method.
#I don't think there is any change in readablitliy of my code in my refactored solution. However, the code works perfectly the way I want it ot in my refactored solution.