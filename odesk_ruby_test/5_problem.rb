
class String
  def is_upper?
    !!self.match(/\p{Upper}/)
  end

  def is_lower?
    !!self.match(/\p{Lower}/)
    # or: !self.is_upper?
  end
end

def rule1(chars)
  if chars.first.is_upper? && chars.last.is_upper?
    return true
  else
    return false
  end
end

def rule2(s)
  if /\s/.match(s)
    return false
  else
    return true
  end
end

def rule3(s)
  if /\d\d/.match(s)
    return true
  else
    return false
  end
end

ARGF.each_line do |e|
  characs = e.split(//)
  characs.slice!(-1)
  e.chomp!
  #puts rule1(chars)
  #puts rule2(e)
  #puts rule3(e)
  if rule1(characs) && rule2(e) && rule3(e)
    puts "OK"
  else
    puts "ERROR"
  end
end
