def selection_sort(arr)
  arr.length.times do |start|
    min = start
    start.upto(arr.length - 1) do |i|
      min = i if list[i] < list[min]
    end
    arr[start], arr[min] = arr[min], arr[start]
  end
  arr
end
