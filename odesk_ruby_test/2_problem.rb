
class String
  def is_palindrome?
    self == self.reverse
  end
end

palindromes = []

ARGF.each_line do |e|
  e.chomp!
  if e.is_palindrome?
    palindromes << e.downcase
  end
end
palindromes.sort!
palindromes.each do |p|
  puts p
end
