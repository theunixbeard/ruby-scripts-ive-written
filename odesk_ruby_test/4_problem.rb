
first_row = []
second_row = []
first = 0


ARGF.each_line do |e|
  if first == 0
    first_row = e.split(",")
    first = 1
    first_row.last.chomp!
  else
    second_row = e.split(",")
    second_row.last.chomp!
  end
end

first_row.each do |f|
  count = 0
  second_row.each do |s|
    if f == s
      count += 1
    end
  end
  print f
  print "-"
  print count
  print "\n"
end
