class Flyer
  attr_reader :name, :email, :miles_flown
  attr_accessor :status

  def initialize(name, email, miles_flown, status=:bronze)
    @name = name
    @email = email
    @miles_flown = miles_flown
    @status = status
  end

  def to_s
    "#{name} (#{email}): #{miles_flown} - #{status}"
  end
end

flyers = []
flyers << Flyer.new("Larry", "larry@example.com", 4000, :platinum)
flyers << Flyer.new("Moe", "moe@example.com", 1000)
flyers << Flyer.new("Curly", "curly@example.com", 3000, :gold)
flyers << Flyer.new("Shemp", "shemp@example.com", 2000)

puts "\nFrequent Flyers: \n\n"

frequent_flyers = flyers.select { |f| f.miles_flown >= 3000 }
puts frequent_flyers

puts "\nCasual Flyers: \n\n"

casual_flyers = flyers.reject { |f| f.miles_flown >= 3000 }
puts casual_flyers

puts "\nAny platinum flyers?"
puts flyers.any? { |f| f.status == :platinum }

puts "\nFirst silver flyer"
puts flyers.detect { |f| f.status == :bronze }

platinum_flyers, coach_flyers = flyers.partition { |f| f.status == :platinum }
puts "platinum flyers: "
puts platinum_flyers
puts "other poor sods: "
puts coach_flyers

puts flyers.map { |f| "#{f.name} (#{f.status.upcase})"}

puts flyers.map { |f| "#{f.name} kilometers flown: #{f.miles_flown * 1.6}" }

puts "total miles flown: "
puts flyers.reduce(0) { |total, flyer| total + flyer.miles_flown }

puts "total kilometers flown: "
puts flyers.map { |f| f.miles_flown * 1.6 }.reduce(0, :+)