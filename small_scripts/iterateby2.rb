numbers = [1,2,3,4,5,6,7,8,9,10,22,33,44,55]
bigger_numbers = []

rand(1..204).times do
  numbers << rand(0..300)
end

numbers.each do |n|
  bigger_numbers << n+2
end

p numbers.length.to_s + ": " + numbers.to_s
p bigger_numbers.length.to_s + ": " + bigger_numbers.to_s