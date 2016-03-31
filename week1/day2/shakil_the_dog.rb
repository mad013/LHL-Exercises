# Save this file to your computer so you can run it 
# via the command line (Terminal) like so:
#   $ ruby shakil_the_dog.rb
#
# Your method should wait for user input, which corresponds
# to you saying something to your dog (named Shakil).
 
# You'll probably want to write other methods, but this 
# encapsulates the core dog logic
def shakil_the_dog(dogspeak)
  case dogspeak 
  when "woof"
    puts "WOOF WOOF WOOF"
  when "shakil stop" || "Shakil STOP!"
    #silence
  when "meow"
    puts "woof woof woof woof woof"
  when dogspeak.include?("treat")
    #silence
  when "go away" || "No"
  else 
    puts "woof"
  end 
end 
  
 
 speak_to_dog = ''
# Run our method
while not (speak_to_dog == "No" || speak_to_dog == "go away") do #reverse logic could use while (not condition && not condition)
  
  puts "Meet Shakil! Would you like to talk?"
  speak_to_dog = gets.chomp  

  shakil_the_dog(speak_to_dog)
end

