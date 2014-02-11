# midterm, final, essay, essay, blogposts
percents = [ 0.3, 0.3, 0.15, 0.15, 0.1 ]
scores = [ 0.94, 0, 1.00, 1, 0.95 ]
third = [ 1, 2, 3, 4, 5]

current_points = 0
a_points = 0.94

third.unshift(nil)
percents.zip(scores, third).each do |percent, score, third| 
  current_points += percent*score
  puts percent
  puts score
  puts third
end

points_for_a = (a_points - current_points)/0.3

puts "Current Points: " + current_points.to_s
puts "A grade: " + a_points.to_s
puts "Minimum average needed for A grade: " + points_for_a.to_s

