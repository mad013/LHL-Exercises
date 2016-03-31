def fb(s, f)
  s.upto(f) { |x|  puts e(x)}
end

  def e(y)
    if div_3?(y) && div_5?(y)
      "FizzBuzz"
    elsif div_5?(y)
      "Buzz"
    elsif div_3?(y)
      "Fizz"
    else
      y
    end
  end

def div_5?(x)
  x % 5 == 0 # Variable divisible by 5
end

def div_3?(x1)
 x1 % 3 == 0 # Variable divisible by 3
end

a = 60
b = 80
fb(a, b)
