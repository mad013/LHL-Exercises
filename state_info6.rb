#6. Define a method find_state_for_city which should: 
#             1. take as input the name of city
#             2. return the state code for where city is located
def find_state_for_city(city_name)
  @cities.find do |k, v| 
      if v.include?(city_name)
        return k
      end 
  end 
end 

def describe_state(statecode)
  if @cities[statecode].nil? #checks to make sure we have it in our database
    puts "State does not exist"
  else 
   return "The State Code you entered is for #{@states[statecode]} which has the following cities: #{@cities[statecode].join(", ")}." #.join(", ") removes brackets and quotes
 end 
end 

def calculate_tax(statecode, dollar_amt)
  
  if @cities[statecode].nil?
    puts "Cannot calculate taxes."
  else 
    tax_rate = @taxes[statecode]
    taxes_paid = dollar_amt*tax_rate/100 #add feature to round 2 decimal places
    return "You will pay #{@taxes[statecode]} percent of your salary in #{@states[statecode]} in 2016. This amounts to $#{taxes_paid}." #insert taxes_paid
  end 

end 

@states = {
  OR: 'Oregon',
  FL: 'Florida',
  CA: 'California',
  NY: 'New York',
  MI: 'Michigan'
}

@states[:TX] = 'Texas'
@states[:MD] = 'Maryland' 


@cities = {
  OR: ['Newport','Portland'],
  FL: ['Tampa', 'Orlando', 'Miami'],
  CA: ['San Francisco', 'Los Angeles', 'San Diego'],
  NY: ['New York City', 'Albany', 'Buffalo'],
  MI: ['Detroit', 'Grand Rapids'],
  TX: ['Houston', 'Austin', 'Dallas'],
  MD: ['Baltimore']
}



@taxes = {
  OR: 7.5,
  FL: 15,
  CA: 12,
  NY: 5.7,
  MI: 6,
  TX: 8,
  MD: 10
}

puts "Enter your City:"
your_city = gets.chomp
puts find_state_for_city(your_city)
#puts "Enter your State Code:"
#state_code = gets.chomp.to_sym # semi-colon not needed above because of this conversion
#puts "Enter the amount you earned this year (numbers only, decimals ok)"
#amt_earned = gets.chomp.to_i 
#puts describe_state(state_code)
#puts calculate_tax(state_code, amt_earned)




