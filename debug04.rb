def char_count(list)
  letters = {}
  list.each do |word|
    word.split('').each { |letter| letters[letter] =+ 1 } #changed to =+ from +=
  end
  letters
end

# Why the long face(error)? 
# 1. This should return count of each letter in the list
# ex: { "a" => 4, "p" => 3, "l" => 1  ...}

puts char_count(['apples', 'oranges', 'hipsters', 'are', 'same']) #changes parenthesis to braces


# 2. What are the improvements you can do to above code?