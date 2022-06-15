# frozen_string_literal: true

def merge_sort(unsorted_arr)
  array_length = unsorted_arr.length
  return unless array_length > 1

  merge_sort(unsorted_arr[0, (array_length / 2)])
  merge_sort(unsorted_arr[(array_length / 2), array_length])
  merge_sort_helper(unsorted_arr[0, (array_length / 2)], unsorted_arr[(array_length / 2), array_length])
end

# merge_sort_helper takes in 2 arrays and sorts them according to merge sort
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

arr1 = [6, 2, 8, 3]
arr2 = [1, 4, 5]

puts "Before sorting: #{arr1 + arr2}"
puts "After sorting: #{merge_sort(arr1 + arr2)}"
