
nums = [ '01', '10', '02', '11', '03', '09', '04', '12',
        '05', '08', '06', '13', '07', '14', '08', '05',
        '09', '15', '10', '07', '11', '16', '12', '02',
        '13', '04', '14', '03', '15', '17', '16', '06',
                          '17', '01'];

puts "Number of numbers: " + nums.count.to_s
pair_count = 0

while nums.length > 0 do
  current = nums.pop
  if nums.include? current
    pair_count += 1
  end
end

pair_count /= 2 # Since we double count each pair

puts "Number of pairs: " + pair_count.to_s

