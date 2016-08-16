def merge_sort(arr)
  return arr if arr.count < 2

  left = arr[0...(arr.count / 2)]
  right = arr[(arr.count / 2)...(arr.count)]

  sleft = merge_sort(left)
  sright = merge_sort(right)

  merge(sleft, sright)
end

def merge(sleft, sright)
  merged_arr = []
  while !(sleft.empty? || sright.empty?)
    if sleft[0] < sright[0]
      merged_arr << sleft.shift
    else
      merged_arr << sright.shift
    end
  end

  merged_arr + sleft + sright
end
