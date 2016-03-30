# Save this file to your computer so you can run it 
# via the command line (Terminal) like so:
#   $ ruby shakil_the_dog.rb
#
# Your method should wait for user input, which corresponds
# to you saying something to your dog (named Shakil).
 
# You'll probably want to write other methods, but this 
# encapsulates the core dog logic
def shakil_the_dog(dogspeak)
  #loop statement including print statements and gets.chomp
  if dogspeak == "woof"
    puts "WOOF WOOF WOOF"
  elsif dogspeak == "shakil stop" || dogspeak == "Shakil STOP!"
    # Moment of silence 
  elsif dogspeak == "meow"
    puts "woof woof woof woof woof"
  elsif dogspeak.include? "treat" #determine how to say anything else including word "treat"
    # Moment of silence
  elsif dogspeak == "go away" || dogspeak == "No"
  else      
    puts "woof"
  end
  
  
end
 
 speak_to_dog = ''
# Run our method
while not (speak_to_dog == "No" || speak_to_dog == "go away") do
  
  puts "Meet Shakil! Would you like to talk?"
  speak_to_dog = gets.chomp  

  shakil_the_dog(speak_to_dog)
end

