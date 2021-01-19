scores = [83, 71, 92, 64, 98, 87, 75, 69]

puts "high scores:"
high_scores = scores.select { |s| s > 80 }
puts high_scores

puts "low scores:"
low_scores = scores.reject { |s| s > 80 }
puts low_scores

puts "first failing score:"
failing_score = scores.any? { |s| s < 70 }
if failing_score
  puts scores.detect { |s| s < 70 }
end

puts "scores doubled: "
doubled_scores = scores.map { |s| s*2 }
puts doubled_scores

puts "total score"
total = scores.reduce(:+)
puts total

evens, odds = scores.partition { |s| s.even? }
puts "evens: \n"
evens.each { |n| puts n }
puts "odds: \n"
odds.each { |n| puts n }