def merge_sort(arr)
    if arr.length < 2
      return arr
    else
      min = arr[0]
      index = 0
      arr.each_index { |x| 
        if arr[x] < min 
          min = arr[x]
          index = x
        end
      }
      arr.delete_at(index)
      ([] << min) + merge_sort(arr)
    end
end

puts merge_sort([5,8,3,1,4,6,7,9,2,10,15,14,13,12,11,11]).to_s
