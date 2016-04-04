# must be baller and either furnished or rent cheaper than 2100
def rent?(baller, furnished, rent)
  if baller && (furnished || rent < 2100) 
    return true
  else 
    return false
  end
end

#puts rent?(true, true, 2000)
#puts rent?(false, true, 3000)
#puts rent?(true, false, 3000)
#puts rent?(false, true, 3000)
#puts rent?(false, true, 2000)
#puts rent?(false, false, 3000)


###
# Add your "test" ("driver") code below in order to "test drive" (run) your method above...
# The test code will call the method with different permutations of options and output the result each time.
# This way, you will be able to run the renter.rb file from the CLI and look at the output of your "tests" to validate if the method works.
# Without the test code, it will be hard for you to know if this method is working as it should or not.
###