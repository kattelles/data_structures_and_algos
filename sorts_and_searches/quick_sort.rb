def quicksort(arr)
  return arr if arr.length <= 1
  pivot_arr = [arr.first]
  left_side = arr[1..-1].select {|el| el < arr.first}
  right_side = arr[1..-1].select {|el| el >= arr.first}
  quicksort(left_side) + pivot + quicksort(right_side)
end


def quicksort_in_place(array, start = 0, length = array.length)

    return array if length < 2

    pivot_idx = partition(array, start, length)

    left_length = pivot_idx - start
    right_length = length - (left_length + 1)
    quicksort_in_place(array, start, left_length)
    quicksort_in_place(array, pivot_idx + 1, right_length)

    array
  end


def partition(array, start, length)

  pivot_idx = start
  pivot = array[start]

  ((start + 1)...(start + length)).each do |idx|
    val = array[idx]
    if val < pivot
      array[idx] = array[pivot_idx + 1]
      array[pivot_idx + 1] = pivot
      array[pivot_idx] = val
      
      pivot_idx += 1
    end
  end

  pivot_idx
end
