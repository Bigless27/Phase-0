#-Pseudocode:
#-I figured out that their are 52 students in the cohort
#-First, I will take the inputted array of student names as my parameter and use the "shuffle" method to shuffle the array's elements
#-Next I will take the list of names and I will use the each.slice method to split up the groups into teams of four.
#-I will then display the teams with their team number
###########
#In my refactored solution I wanted to make groups of five and use flow control to addjust if I have a group of 2 or 1.
# I will use an if statements grab the last element in the list and measure if it length is less than 3.If it is more than three than it just prints the statement.
# I then will take the last to elements in the array and then combine them into one. Next I will split them up with teh each_slice method into 3's
#After I do that I will combine those last two groups into on group
#next I will take the original array and delete the last two elements in it
#after I will concatenate the new array into the old one on where the items were deleted.
#I will repeat this process one more time to account for the number of items in the new array not being equal to 3 and making an extra group
#After I do that I will change that last group into an array then concatenate it back to the old array that I made changes to
#I will then print out that array with these changes.





#-Initial Solution:
# def groups(list)
#   random=list.shuffle
#   sliced=random.each_slice(4).map{|x| x.join(",")}


#   counter=0
#   sliced.each do |group|
#     counter +=1
#     puts "Team number #{counter}, #{group}"
#   end

# end

a= %w[ryan jamie jordan donnie lauren michael sydney davis lauren hextel lebron james]

#############################
#Refactored Solution
def groups(list)
  random=list.shuffle
  sliced=random.each_slice(5).map{|x| x.join(",")}

  if sliced[-1].length > 3
    return sliced
  combine=sliced[-2]+ ','+sliced [-1]
  new_group=combine.split(",").each_slice(3).map{|x| x.join(",")}


  final_group= new_group[-2]+ ','+new_group[-1]
  sliced.delete(sliced[-2])
  sliced.delete(sliced[-1])
  comp=sliced+ new_group
  comp.delete(comp[-2])
  comp.delete(comp[-1])


  solution=comp+final_group.split


  counter=0
  solution.each do |group|
    counter +=1
    puts "Team number #{counter}, #{group}"
  end

end

groups (a)



######
#Reflection:
# -The most intresting and difficult part of this challenge was working on the refactoring solution. I wanted to add a lot more complexity to the proble.
#This took a while to do becasue I wanted to make this sorting group method work for any situation.
#-I am definetly improving in writing Pseudocode
#-I tested multiple different arrays and see how they reacteded to my defined method
#If my method worked how I wanted it to thats when I knew I ha a good solution.
#I don't think I could of made this any better. Maybe I could of used more methods, but I like my logical version
#-I decided to store the accountability groups in an array. I thought this would be the eaisest to sort through and place into groups
#-I didn't learn much, but I now know to put more effort into my initial solution so my refactored one won't be as complex.
#I learned about the collect method, but I didn't need to use it.