def count_letters(mystring)
  h = Hash.new(0)
  mystring.split("").each do |letter|
    h[letter] += 1 # n[h] setting n (letter) to be key in hash - this eliminates duplicate
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
