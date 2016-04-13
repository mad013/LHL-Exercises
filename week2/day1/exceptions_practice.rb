def must_be_true(value)
  raise TypeError, 'You must be true' if value == false 
end 

must_be_true true