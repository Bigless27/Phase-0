#Attr Methods

# I worked on this challenge [by myself, with:]

# I spent [#] hours on this challenge.

class NameData
  attr_accessor :name
  def initialize(name)
    @name=name
  end

end


class Greetings
  def initialize(name)
    @ndata=NameDate.new(name)
  end

  def whats_up
    puts "What's up #{@ndata}? You're the man!"
  end
end



# Reflection
#Release 1
#-These methods are either defining an instance variable or they are changing an exsisting instance variable.
#-The modify the instance variable by just setting the instance variables equal to a new value within the methods
#
#Release 2
#-They got rid of the what_is_age method and used an attr_reader for age
#-The what_is_age method was replaced with a attr_reader of age
#-The code is simpler than the last.
#
#Release 3
#-What changed in this release is that they gave age an attr_writter method
#-What was replaced in this challenge was the method change_my_name
#-The code is simpler than the last
#
#
#Reflection
#-A reader method is a way of being able to call on a instance variable without having to define a method to do so.
#-A writter method is a way to change an instance variable without having to define a method to do so.
#-The attr methods make the code more simple and easy to read.
#-You shouldn't always use an accessor because you may accidently change the value of a variable that you didn't want to change. the reader method is a good way to make sure your instance variables value doesn't change.
#-Nothing is confusing to me about these methods after this challenge. Very informing!
