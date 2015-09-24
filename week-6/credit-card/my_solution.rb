# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with: ].
# I spent [too long] hours on this challenge.

# Pseudocode

# Input: integers
# Output: true, false or an ArgumentError
# Steps:
#create an initialize for the credit card class that will take in the integer as a parameter.
#raise an error if it's not 16 digits long
#Then take the numbers turn them into a string and map them by each character to an array. Also, we will be changing the string back into integers before we put them in the array.
#use an iterating method with an index counter to apply the code of doubling every other number
#check for any integer over 9. Split them into two different integers
#use an inject method to add all the elements together.
#if sum is divided by 10 return true else return false




# p 1234.to_s.chars.map(&:to_i)
# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

# class CreditCard

#   def initialize(creditnumber)
#   @creditnumber=creditnumber
#   raise ArgumentError.new"needs to be 16 digits" if creditnumber.to_s.length != 16
#   end

#   def double_number
#   digit_array= @creditnumber.to_s.chars.map(&:to_i)
#   @double_digit=digit_array.map!.with_index {|digit,index|
#   if index % 2 ==1
#   digit*2
#   else
#   digit

#   end}
#   end

#   def break_add
#   double_number
#   breaker= @double_digit.map! {|digit,index|
#   if digit >9
#   digit.to_s.split('')

#   else
#   digit
#   end}

#   final_array=breaker.flatten!
#   final_array.map! {|number|

#   if number.kind_of? (String)
#   number.to_i
#   else
#   number
#   end}

#  @adder = final_array.inject{ |x,y| x += y }
#  end

# def check_card
#   double_number
#   break_add
#   if @adder % 10 == 0
#   return true
#   else
#   return false
#   end
# end

# end






# Refactored Solution

 class CreditCard



  def initialize(creditnumber)
    @creditnumber = creditnumber
    raise ArgumentError.new "Your credit card number needs to be 16 digits long!" if creditnumber.to_s.length != 16
  end

  def check_card
    double_number
    sum
    if @adder % 10 == 0
      return true
    else
      return false
    end
  end

  def double_number
    @digits = @creditnumber.to_s.split("")

    @digits.map!.with_index{ |x, i|
      if i.even?
        x.to_i * 2
      else x.to_i
      end
    }
  end

  def sum
    breaker = @digits.map {|x|
      if x.to_i > 9
        split = x.to_s.split("")
        split.map { |n| n.to_i }
      else
        x
      end
    }
    @adder = breaker.flatten!.inject {|x, sum| x += sum }
  end
end

#Reflection
#-The most difficult part of this challenge for me was passing variable in between methods. I figured out that you can
#run methods inside of methods so you can access the variables you want
#-Flatten was the most useful method I learned. It cleaned up my aray very nicely
#-I was able to solidify passing variable withing methods in classes.