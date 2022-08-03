def stock_picker (array)
  buy = array[0]
  sell = 0
  profit = 0
  array.each_with_index do |val1,index1|
    if val1 < buy
      array.each_with_index do |val2,index2|
        if index1 < index2 && (val2-val1) > profit
          buy = val1
          sell = val2
          profit = sell - buy
          #p "profit! #{buy}, #{sell}, #{profit}"
        end
      end
    else 
      #p "#{val1} not lower than #{buy}"
   end
  end
  result = [buy,sell]
end

p stock_picker([17,3,6,9,15,8,6,1,10])
p stock_picker([17,3,6,9,15,8,6,7,1])
p stock_picker([44,30,24,32,35,30,40,38,15])
