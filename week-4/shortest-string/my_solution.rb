# Shortest String

# I worked on this challenge [by myself, with: ].

# shortest_string is a method that takes an array of strings as its input
# and returns the shortest string
#
# +list_of_words+ is an array of strings
# shortest_string(array) should return the shortest string in the +list_of_words+
#
# If +list_of_words+ is empty the method should return nil

#Your Solution Below
def shortest_string(list_of_words)
  list1=[]
  list2=[]
  zero= list_of_words.length
  if zero==0
    return nil
  end
  list_of_words.each do |n|



    if list1.length== 0
      list1.push n
      next
    end
    list2.push n
    comp1=list1[0].length
    comp2=list2[0].length

    if comp1 < comp2
      list2= []
      next
    elsif comp1 > comp2
      list1= list2
      list2=[]
      next
    end

  end
  return list1.join
end

shortest_string([])
