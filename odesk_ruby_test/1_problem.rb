
class String
    def is_i?
       !!(self =~ /^[-+]?[0-9]+$/)
    end
end


ARGF.each_line do |e|
  if e.is_i?
    puts "INTEGER"
  else
    puts "NOTINTEGER"
  end
end
