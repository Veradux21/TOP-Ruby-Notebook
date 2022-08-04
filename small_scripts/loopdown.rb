puts "Tell me a number!"
num_from = gets.chomp.to_i
x = num_from

loop do
  num_from -= 1
  puts num_from
  if num_from == 0
    break
  end
end

# I think I like Until better than loop do
until x < 0
  puts "x equals:" + x.to_s
  x -= 1
end