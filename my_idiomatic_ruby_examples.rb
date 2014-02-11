# Some examples of idiomatic ruby I dug up from my portfolio
# Implementing the URL shortener seems like a fun task!

# Implement Factorial
def factorial(num)
  if(num<0)
    raise "Number must be greater than 0";
  end
  (1..num).inject(:*)
end

# Test if one string contains another
def contains_string?(str1, str2)
  !!str1.slice(str2)
end

# Test if a string can be parsed as an integer
def is_integer?(str)
  !!(str.match(/^[-+]?[0-9]+$/))
end

# Sites I like:
# http://www.rubytapas.com/
# http://rubyrogues.com/

# Thanks for considering my application!

