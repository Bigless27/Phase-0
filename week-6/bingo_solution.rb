# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
#-I vreated a call method that will call a random letter from the array bingo. Also it will return a random number between 1-100.

# Check the called column for the number called.
#-I will first iterate through the arrays in the arrays in the bingo_board. I will then map to ever single digit in the board. Making sure map is destructive. I will then compare the index of the array to the letter in the bingo array instance variable.
#-If thouse match I will then check if that number is equal to the number returned in call.
#-If both those cretiria return true I will then change the digit to "X".
#-If it doesn't meet both of those criteria then I will leave that number as is and check the next one.
#-I will then define a display method to display the board to the console (prettily)


# Initial Solution

# class BingoBoard

#   def initialize(board)
#     @bingo_board = board
#     @bingo=%w[B I N G O]
#   end

#   def call
#     @letter=@bingo.sample
#     @number=rand(100)
#     return [@letter,@number]
#   end

#   def check
#     @bingo_board.each do |array|
#       array.map! do |x|
#         if array.index(x)==@bingo.index(@letter)
#           if x == @number
#             x="X"
#           else
#             x
#           end
#         else
#           x
#         end
#       end
#     end
#     display_board
#     return @bingo_board

#   end

#   def display_board
#     puts "Your Board:"
#     @bingo_board.each do |row|
#         puts "#{row}"

#     end
#   end

# end

# Refactored Solution
class BingoBoard

  def initialize(board)
    @bingo_board = board
    @bingo=%w[B I N G O]
  end

  def call
    @letter=@bingo.sample
    @number=rand(100)+1
    return [@letter,@number]
  end

  def check
    @bingo_board.each do |array|
      array.map! do |x|
        if array.index(x)==@bingo.index(@letter)
          if x == @number
            x="X"
          else
            x
          end
        else
          x
        end
      end
    end
    display_board
    return @bingo_board

  end

  def display_board
    puts "Your Board:"
    10.times do
      print "."
      sleep 0.3
    end
    puts ""
    @bingo_board.each do |row|
        puts "-#{row}"
    end
  end
end




#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)
new_game.call
new_game.check


#Reflection
#-The checking method was the hardest part of this challenge to psuedocode for. It was initially hard for me to designate letters to correspond with rows. I think my pseudocoding style is effective
#-The benefits of using a class for this challenge is that you can access all of your method in one class. You can also create instance variable to pass information through the class. This is helpful for the constant changing of the bingo board.
#-You can access cordinates in a nested array by using double hashing like array[0][0]
#-I used nested iteration to access the cordinates in the array that I wanted to compare to my call method. These methods where each and map.
#- An instance variable should be a value that needs to be present in more than one method. A local variable only needs to be present in one method.
#-How pretty I am displaying the bingo board is what is most improved in my refactored solution.

