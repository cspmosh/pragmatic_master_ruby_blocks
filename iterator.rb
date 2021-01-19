def three_times
  1.upto(3) { |n| yield(n) }
end

three_times do |count|
  puts "#{count} situp"
  puts "#{count} pushup"
  puts "#{count} chinup"
end