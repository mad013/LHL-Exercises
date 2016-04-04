def benchmark(string)
  # Your benchmarking code goes here.
  beginning_time = time.now
  long_string = yield
  ending_time = time.now
  #puts beginning_time - time.now
end
 
# Be careful, pasting this into IRB will take a long time to print.
# It's a loooong string. :) 

long_string = "apple"*100
 
running_time = benchmark(long_string.reverse)
 
puts "string.reverse took #{running_time} seconds to run"