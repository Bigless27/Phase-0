# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input:
# Output:
# Steps:


# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

class CreditCard

 lass CreditCard
  attr_reader :sum

  def initialize(creditcard)
    @creditcard = creditcard
    raise ArgumentError.new "Your credit card number is too short!" if      creditcard.to_s.length != 16
  end

  def check_card
    if @total % 10 == 0
      return true
    else
      return false
    end
  end

  def card_double
    @digits = @creditcard.to_s.split("")

    @digits.map!.with_index{ |x, i|
      if i.even?
        x.to_i * 2
      else x.to_i
      end
    }
  end

  def sum
    split_digits = @digits.map {|x|
      if x.to_i > 9
        split = x.to_s.split("")
        split.map { |n| n.to_i }
      else
        x
      end
    }
    @total = split_digits.flatten!.inject {|x, sum| x += sum }
  end
end

ryan=CreditCard.new(4563960122000000)
puts ryan.check_card

# Refactored Solution








# Reflection