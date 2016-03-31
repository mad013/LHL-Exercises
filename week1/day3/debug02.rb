def average(numbers)
  sum = 0
  numbers.each do |num|
    sum += num.to_i
  end
  sum.to_f / numbers.size #need to add .to_f for line 24 test 
end

## TEST HELPER METHOD
def test_average(array = []) # [] means in the absense of array, will add empty array 
  if array.empty?  # array.empty means array exists but nothing in it, array.nil means non-existent - array.nil not required here
    p nil 
    return nil # experimented removing and this adds a line for each bracket set with text NaN 
  end 
  print "avg of #{array.inspect}:"  
  result = average(array)
  p result
end

## TEST CODE
test_average([4,5,6]) # => 5
test_average([15,5,10]) # => 10

# Should treat string like number
test_average([15,'5',10]) # => 10 ADDED num.to_i in Line 4 to convert string value DONE 

# Should show decimal value
test_average([10, 5]) # => 7.5 instead of just 7

# Watch out! Even tests can have bugs!
test_average([9, 5, 7]) #DONE 

# Empty set should return nil, not throw an error
test_average([]) # => nil

# Non-existent set should return nil
test_average() # => nil

# BONUS: Should ignore nils in the set
test_average([9,6,nil,3]) # => 6
