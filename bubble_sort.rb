def bubble_sort(array)
  array_length = array.length
  loop do
    swapped = false
    (array_length-1).times do |i|
      if array[i] > array[i+1]
        array[i], array[i+1] = array[i+1], array[i]
        p array
        swapped = true
      end
    end

    break if not swapped
  end

  array
end

p bubble_sort([4,3,78,2,0,2])
p bubble_sort([11,5,7,6,15])