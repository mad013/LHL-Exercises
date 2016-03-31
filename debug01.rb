list = ["'yvr' => 'Vancouver'", "'yba' => 'Banff'", "'yyz' => 'Toronto'", "'yxx' => 'Abbotsford'", "'ybw' => 'Calgary'"]

# Why is it returning nil instead of first element of the list above
# Answer: Changes braces to brackets and added double quotes to turn elements into strings 
puts list[0]