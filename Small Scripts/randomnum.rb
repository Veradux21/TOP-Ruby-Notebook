num = rand(0..150)

result = case 
when num <= 50
  "Less than 50"
when num > 50 && num < 100
  "Between 50 and 100"
else
  "ITS OVER 9000!"
end

puts result