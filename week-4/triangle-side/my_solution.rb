# I worked on this challenge [by myself, with: ].


# Your Solution Below

def valid_triangle?(a, b, c)
  floata= a.to_f
  floatb= b.to_f
  floatc= c.to_f
  list=[floata,floatb,floatc]


  sorted=list.sort
  ab= sorted[0] + sorted [1]
  if ab > floatc
    return true
  elsif ab <= floatc
    return false
  else
    return false
  end
end

valid_triangle?(50,70,200)
