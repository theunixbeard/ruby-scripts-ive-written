

values = []
min = 0
max = 0
first = 0

ARGF.each_line do |e|
  int_val = e.to_i
  if first == 0
    min = int_val
    max = int_val
    first = 1
  end
  values << int_val
  if int_val < min
    min = int_val
  end
  if int_val > max
    max = int_val
  end
end

(min..max).each do |v|
 puts "@"
end
