
def describe_state(statecode)
  if @cities[statecode].nil? #checks to make sure we have it in our database
    puts "State does not exist"
  else 
   return "statecode is for #{@states[statecode]} which has the following cities: #{@cities[statecode].join(", ")}." #.join(", ") removes brackets and quotes
 end 

end  

@states = {
  OR: 'Oregon',
  FL: 'Florida',
  CA: 'California',
  NY: 'New York',
  MI: 'Michigan'
}

# Add key/variable pairs after the states object is defined
@states[:TX] = 'Texas'
@states[:MD] = 'Maryland' # alternate way is states.merge! TX: 'Texas', AR: 'Arizona'


# Declare another hash called cities

@cities = {
  OR: ['Newport','Portland'],
  FL: ['Tampa', 'Orlando', 'Miami'],
  CA: ['San Francisco', 'Los Angeles', 'San Diego'],
  NY: ['New York City', 'Albany', 'Buffalo'],
  MI: ['Detroit', 'Grand Rapids'],
  TX: ['Houston', 'Austin', 'Dallas'],
  MD: ['Baltimore']
}


puts "Enter your State Code:"
state_code = gets.chomp.to_sym # semi-colon not needed above because of this conversion
puts describe_state(state_code)


# Method should return string, not output it 
# Write test code to output the return value to check that it works
# Write code incrementally: 1) empty method 2) test code after method definition (puts of return value) 3)implement small part of method 4) Add more functionality 









# 4. Declare another hash called taxes - defining taxes for all states
# 5. Define another method called calculate_tax: 
#             1. take state code as input as well as dollar amount
#             2. Determine tax rate based on state
#             3. Calc the tax amount based on that rate
#             4. Returns tax amount rounded to 2 decimal places
#6. Define a method find_state_for_city which should: 
#             1. take as input the name of city
#             2. return the state code for where city is located
# Bonus tasks