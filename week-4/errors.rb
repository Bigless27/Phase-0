# Analyze the Errors

# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

#Cartmans_phrase="Screw you guys " + "I'm going home."

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

def cartman_hates(thing)
  while true
    puts "What's there to hate about #{thing}?"
  end
end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# errors.rb
# 2. What is the line number where the error occurs?
# 170
# 3. What is the type of error message?
# Syntax error
# 4. What additional information does the interpreter provide about this type of error?
#unexpected end-of-input, expecting keyword_end
# 5. Where is the error in the code?
# there is no end afeter the the while loop. line 16
# 6. Why did the interpreter give you this error?
# Ruby need a end to close the method. Since there was only one it it corresponded to the while loop and left the method open.

# --- error -------------------------------------------------------

#south_park

# 1. What is the line number where the error occurs?
# 36
# 2. What is the type of error message?
# Name error
# 3. What additional information does the Object (NameError)
#  undefined local variable or method `south_park' for main:Object (NameError)
# 4. Where is the error in the code?
# line 36
# 5. Why did the interpreter give you this error?
# you specified a variable but didn't assign anything to it. All variables need to be assigned in Ruby.

# --- error -------------------------------------------------------

def cartman()
end
# 1. What is the line number where the error occurs?
# 51
# 2. What is the type of error message?
# No method error
# 3. What additional information does the
# undefined method `cartman' for main

# 4. Where is the error in the code?
# The is no 'def' or 'end' associated with the method name.
# 5. Why did the interpreter give you this error?
#You need to use "def" to define a method and "end" to end it. Without defining the method it cannot be invoked in ruby

# --- error -------------------------------------------------------

def cartmans_phrase
  puts "I'm not fat; I'm big-boned!"
end

#cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
# 67
# 2. What is the type of error message?
# Argument error
# 3. What additional information does the interpreter provide about this type of error?
# Wrong number of arguments (1 for 0)
# 4. Where is the error in the code?
# the error is in line 71. There is a parameter associated with invoking the expression
# 5. Why did the interpreter give you this error?
# We tried to pass a parameter through the method , where the method itself doesn't specify a parameter.

# --- error -------------------------------------------------------

def cartman_says(offensive_message)
  puts offensive_message
end

#cartman_says

# 1. What is the line number where the error occurs?
# 86
# 2. What is the type of error message?
# Argument Error
# 3. What additional information does the interpreter provide about this type of error?
# wrong number of arguments (0 for 1)
# 4. Where is the error in the code?
# the error is in line 90. we didn't specify a parameter.
# 5. Why did the interpreter give you this error?
# We got this error because the method specifies that we need to provide an input when invoking the method. The invoking portion on line 90 doesn't specify a parameter to be passed.



# --- error -------------------------------------------------------

def cartmans_lie(lie, name)
  puts "#{lie}, #{name}!"
end

#cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')

# 1. What is the line number where the error occurs?
# 107
# 2. What is the type of error message?
# Argument Error
# 3. What additional information does the interpreter provide about this type of error?
# wrong number of arguments (1 for 2)
# 4. Where is the error in the code?
# The error occured in invoking "cartmans_lie"
# 5. Why did the interpreter give you this error?
# The method has two parameters specified and we only specified one parameter when invoking the method

# --- error -------------------------------------------------------

#5 * "Respect my authoritay!"

# 1. What is the line number where the error occurs?
# 126
# 2. What is the type of error message?
# Type error
# 3. What additional information does the interpreter provide about this type of error?
# String can't be coerced into Fixnum
# 4. Where is the error in the code?
# The error is in the placement of the elements in the code
# 5. Why did the interpreter give you this error?
#We got this message because we are trying to multiply and integer by a string. If we switch the order then we would be multiplying a string 5 times which work in Ruby because it repeats the number.

# --- error -------------------------------------------------------

#amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?
# 141
# 2. What is the type of error message?
# Zero Division Error
# 3. What additional information does the interpreter provide about this type of error?
# divided by 0
# 4. Where is the error in the code?
# In the math of 141. What the variable is being assinged to
# 5. Why did the interpreter give you this error?
# A number divided  by zero is undefined

# --- error -------------------------------------------------------

require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# 157
# 2. What is the type of error message?
# load error
# 3. What additional information does the interpreter provide about this type of error?
# cannot load such file
# 4. Where is the error in the code?
# the error in the code is in the naming of the file
# 5. Why did the interpreter give you this error?
# There is no file relative to this file that is named "cartmans_essay.md."



# --- REFLECTION -------------------------------------------------------
# -The error that was most difficult to read was the second syntax error in the method. I couldn't figure out what the error was at first becasue in other programming launguages thats how you properly define a method.
# I watched a youtube video on ruby methods that explained to me how to fix this error.
# -Yes
#- the process I will follow will be to first run the code to identify the problem. Second, I will examine the terminals error message. If I can't figure out what the error is from then I will do some research, or some quick test to help identify what the problem might be. Once I found out the error I would then fix all problems in the code.