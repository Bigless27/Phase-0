#Psedocode
#-define a method
#-Create a hash
#-add an item with a quantity to the list
#-add bread with a quantity of 2
#-define another method for removal
#-remove that item from the list
#-define another method for changing the quantity
#-change the qiantity of bread to 4
#-print the with some flare

#Actual code
$list={}
def groceries(grocery,quantity)
  $list[grocery] = quantity
end

def rmgroc(grocery)
 if $list.has_key?(grocery) == false
  puts " item not in list"
  else
  $list.delete(grocery)
 end
end

def change(grocery,quantity)
 $list[grocery] = quantity
end

def show
 print $list
end

groceries("lemonade",2)
groceries("tomatoes",3)
groceries("onions",1)
groceries("icecream",4)
show
puts
rmgroc("lemonade")
show
puts
change("icecream",1)
show

#I learned that the better you define you psedocode the better your code will turn out. I learned this the hard way by working on this challenge. If my pair and I spent a little more time on our psedocode before moving into the code, our process would of went a lot smoother.
#Using hashes were the ideal method to use for this challenge. The reason being is that with hashes you can store multiple variables and values in all in oone hash. These variable are also easy to access add remove and change withing a hash. An array only stores objects.
#A method returns anything that you specify it to reutrn. This doesn't mean that the method displays the return value on the screen, but it is stored in the function. So if you print the function then it would display the return that you specified. Also, a return automatically ends the method being defined. This means if there is more code in the method after the return then that code is ignored.
#You can pass strings, arrays, integers, floats, variales, and hashes.
#you can either define a global variable or you can use inheritance.
#Concepts that were solidified in this challenge were syntax in ruby. I understand the concepts behing how to do things but I struggly a little bit on remembering the syntax for elements. Specifically, adding and removing a hash. Also, I learned the syntax for defining a global variable which was simpel enough.