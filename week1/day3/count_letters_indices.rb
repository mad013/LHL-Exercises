require 'pry'
def count_letters(mystring)
  h = Hash.new({count:0})
  mystring = mystring.split("")
  mystring.each_with_index do |letter, index|
    letter_hash = h[letter].clone #
    letter_hash[:count] += 1 
    letter_hash[:index] = index
    h[letter] = letter_hash
    # binding.pry
    # now return all indices (positions) where each character is found use: mystring.index(value)
  end
  h
end 


# method count_letters should tell us all the unique characters that exist in a string that is passed into it
# method count_letters should also report back how many instances of each letter were found 
# tip: use .inspect on an object to make it a debug friendly string 
# result should be a puts hash with vertical list of letters => count 
# substrings? 
# splitting string makes ARRAY of strings (individual letters)
# go through every character and save into hash
puts count_letters("mshjvdjkxlkjeiojlkdx,x.....")


