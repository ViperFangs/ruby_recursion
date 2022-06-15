def merge_sort(unsorted_arr)
  array_length = unsorted_arr.length
  return if array_length < 2

  slice_number = array_length.even? ? array_length / 2 : (array_length + 1) / 2

  merge_sort(unsorted_arr[0...slice_number])
  merge_sort(unsorted_arr[slice_number..array_length])
  #sort the array
end
