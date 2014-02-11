

ARGF.each_line do |e|
  e.scan(/\p{Upper}\w*/).each do |m|
    puts m
  end
end
