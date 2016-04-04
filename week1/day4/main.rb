# This is the main entrypoint into the program
# It requires the other files/gems that it needs

require 'pry'
require './candidates'
require './filters' 

#REPL 

def candidate_menu(user_response)
  case user_response
  when "find 1"
    pp find(1)
  when "all"
    pp ordered_by_qualifications(@candidates)
  when "qualified"
    pp qualified(@candidates)
  when "quit"
    return
  else 
    puts "ERROR" 
  end 
end 

#user_command = ''

#puts "please select one of the following: find 1, all, qualified, or quit" 
#user_input = gets.chomp
#candidate_menu(user_input) #calling function

puts years_total(@candidates)


#Experience level:
#puts "answer is #{is_experienced?(@candidates[0])}"

#find by id:
#puts  "5: #{find(@candidates[5])}"

#find qualified candidates(test each separately):
#puts "#{is_experienced?(@candidates[1])}"s
#puts "#{is_old_enough?(@candidates[6])}"
#puts "#{applied_recently?(@candidates[0])}"
#puts "#{has_active_github?(@candidates[4])}"
#puts "#{has_languages?(@candidates[2])}"

#pp qualified(@candidates)

#pp ordered_by_qualifications(@candidates)
