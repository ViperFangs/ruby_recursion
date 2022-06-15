# frozen_string_literal: true

# merge_sort takes an array(assumes it unsorted) and returns the sorted array using the merge sort recursion algorithm
def merge_sort(unsorted_arr)
  array_length = unsorted_arr.length
  return unsorted_arr unless array_length > 1

  array_left_half = unsorted_arr[0, (array_length / 2)]
  array_right_half = unsorted_arr[(array_length / 2), array_length]

  left_return_value = merge_sort(array_left_half)
  right_return_value = merge_sort(array_right_half)

  merge_sort_helper(left_return_value, right_return_value)
end

# merge_sort_helper takes in 2 arrays and sorts them according to the merge sort algorithm
def merge_sort_helper(arr1, arr2)
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

  sorted_array
end

arr1 = [6, 2, 8]
arr2 = [1, 4, 5, 7]

# p merge_sort_helper([1, 4, 8, 10], [3, 6])

puts "Before sorting: #{arr1 + arr2}"
puts "After sorting: #{merge_sort(arr1 + arr2)}"
