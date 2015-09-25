# Your Names
# 1)
# 2)

# We spent [#] hours on this challenge.

# Bakery Serving Size portion calculator.

def serving_size_calc(item_to_make, order_quantity)
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}

  # remove error counter
  # compared library key "item_to_make" to nil
  # if == nil raise ArgumentError


    if library[item_to_make] == nil
      raise ArgumentError.new("#{item_to_make} is not a valid input")
  end

  #hashed the keys value of library for the value of the variable serving size
  #Find modulus of Order_quantity/serving size
  serving_size = library[item_to_make]
  serving_size_mod = order_quantity % serving_size

  #Remove case statement and replaced it with a simpler if/elsif/else statement
  #Added suggestion function
  #Pushed suggestion keys into an array

  suggested=[]
  if serving_size_mod > 0
    library.each do |key,value|
      if serving_size_mod >= value

        suggested << key
      end
    end
      return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}, you have #{serving_size_mod} leftover ingredients. Suggested baking items:#{suggested}"

  elsif serving_size_mod ==0
    return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}"

  else
    "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}, you do not have enough ingredients"
  end

end


p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
p serving_size_calc("THIS IS AN ERROR", 5)



#Reflection
#-I learned even if you can fit one method on one line it doesn't nessicarily mean that your
#code is eaisier to read than having the code on multiple lines
#-I didn't learn any new methods
#-I didn't learn anything new. I already new all these hash accessing methods
#-Intepolation was strengthened during this exercise.