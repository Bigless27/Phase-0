# Research Methods

# I spent [] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 1's solution

def my_array_finding_method(array, letter)
  array.select do |x|
   x if x.class == String && x.include?(letter)
 end
end

def my_hash_finding_method(hash, num)
  new_array = []
    hash.each do |key, value|
     new_array << key if value == num
   end
  new_array
end




# Identify and describe the Ruby method(s) you implemented.
#
#
#

# Person 2
def my_array_modification_method!(source, thing_to_modify)
  source.map! do |element|
    if element.class == Fixnum
      element += thing_to_modify
    else
      element = element
    end
  end
end

def my_hash_modification_method!(source, thing_to_modify)
  source.each do |key, value|
    source[key] += thing_to_modify
  end
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 3
def my_array_sorting_method(array)
  return array.sort_by {|x| x.to_s}
end

def my_hash_sorting_method(my_family_pets_ages)
  my_family_pets_ages.sort_by {|key,val| val}
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 4
def my_array_deletion_method!(source, thing_to_delete)
  source.dup
  source.delete_if {|x| x[1]==thing_to_delete}
end
# This method was extremely hard to figure out. The reason being is that most methods that check if an character is in an element only work for strings. As you can see in this array there are integers to. I could account for this in a non-destructive way but I can only think of one way to do it destructively.
#For my method above I used the delete_if method and pointed each element itterated through it to a ceratin index. Since ever element that has an "a" in it has it in the same place this works.
#This also accounts for the integers. Since the integers dont have a [1] index it returns nill. This can be compared in the delete_if code block.




########################################
#   begin
#   source.delete_if { x.include?(thing_to_delete)}
#   rescue
#     next
#   end


# end



  # del=[]
  # source.each do |item|
#     if item.is_a? Integer
#       del << item
#       next
#     elsif item.include?(thing_to_delete)
#       next
#     else
#       del << item
#     end
#   end
#   return source=del
# end
############################################
def my_hash_deletion_method!(source, thing_to_delete)
  source.dup

  source.delete_if { |key, value| key == thing_to_delete }
end

# Identify and describe the Ruby method(s) you implemented.
#I used the delete_if method for this assignment
#The code block I used in the delete_if tells that method to delete all instances when the key == thing_to_delete.
#This will then return an array with only the keys that werent specified as contaning the key == thin_to_delete.


# Person 5
def my_array_splitting_method(source)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_splitting_method(source, age)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
#
#
#


# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
#
#
#
#