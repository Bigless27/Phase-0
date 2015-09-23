# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]


# attempts:
# ============================================================
p array[1][1][2][0]



# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}


# attempts:
# ============================================================
p hash.fetch(:outer).fetch(:inner).fetch("almost").fetch(3)


# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}


# attempts:
# ============================================================
p nested_data.fetch(:array)[1].fetch(:hash)


# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]
new_array = []
number_array.each do |x|
 if x.kind_of?(Array)
  new_array << x.map! {|y| y += 5}
 else
  x += 5
  new_array << x
 end
end
p new_array


# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]
# new_names = []
# startup_names.each do |x|
# if x.kind_of?(Array)
# x.each do |y|
# if y.kind_of?(String)
# new_names << y + "ly"
# else
# new_names << y.map! {|z| z + "ly"}
# end
# end
# else
# new_names << x + "ly"
# end
# end
# p new_names
def namely(array)
 array.map! do |x|
  if x.kind_of?(String)
  x + "ly"
  elsif x.kind_of?(Array)
  namely(x)
  end
  end
end

p namely(startup_names)



####Reflection
#-A general rule I would apply to nesting is to always talk it out
# on where you are accessing. It makes it eaiser to figure where you are in the code
#- there are tons of ways to iterate over nested arrays like
# each and map. Those were the main ones we used
#-The brainblast moment we had was when we used recursion int his method.
#We originally couldn't keep the problem original structure in tack.
#recursion came to the rescue in the binus problem and helped us implement the doe we wanted while keeping the integrity of our structure!