# frozen_string_literal: true

def merge_sort(unsorted_arr)
  array_length = unsorted_arr.length
  return unless array_length > 1

  array_left_half = unsorted_arr[0, (array_length / 2)]
  array_right_half = unsorted_arr[(array_length / 2), array_length]
  merge_sort(array_left_half)
  merge_sort(array_right_half)
  merge_sort_helper(array_left_half, array_right_half)
end

# merge_sort_helper takes in 2 arrays and sorts them according to merge sort
def merge_sort_helper(arr, arr1, arr2)
  sorted_array = []
  arr1_index = 0
  arr2_index = 0

  while arr1_index < arr1.length && arr2_index < arr2.length
    if arr1[arr1_index] < arr2[arr2_index]
      sorted_array.push(arr1[arr1_index])
      arr1_index += 1
    else
      sorted_array.push(arr2[arr2_index])
      arr2_index += 1
    end
  end

  until arr1_index == arr1.length
    sorted_array.push(arr1[arr1_index])
    arr1_index += 1
  end

  until arr2_index == arr2.length
    sorted_array.push(arr2[arr2_index])
    arr2_index += 1
  end

  arr = sorted_array
end

arr1 = [6, 2, 8, 3]
arr2 = [1, 4, 5]

#p merge_sort_helper([2, 5, 8], [1, 3, 6, 7])

puts "Before sorting: #{arr1 + arr2}"
puts "After sorting: #{merge_sort(arr1 + arr2)}"
