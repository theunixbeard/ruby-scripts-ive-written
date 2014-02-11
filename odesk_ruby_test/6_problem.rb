
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
first_row.map! do |s|
  s.to_i
end
second_row.map! do |s|
  s.to_i
end
first_row.each_index do |ind|
  if ind != 0
    print ","
  end
  val = first_row[ind] + second_row[ind]
  print val.to_s
end
print "\n"
