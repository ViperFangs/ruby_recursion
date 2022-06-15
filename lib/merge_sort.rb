# frozen_string_literal: true

def merge_sort(unsorted_arr)
  array_length = unsorted_arr.length
  return if array_length < 2

  slice_number = array_length.even? ? array_length / 2 : (array_length + 1) / 2

  merge_sort(unsorted_arr[0...slice_number])
  merge_sort(unsorted_arr[slice_number..array_length])
  merge_sort_helper(unsorted_arr[0...slice_number], unsorted_arr[slice_number..array_length])
end

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

  sorted_array += arr1_index == arr1.length + 1 ? arr2[arr2_index..arr2.length] : arr1[arr1_index..arr1.length]

  sorted_array
end

arr1 = [2, 3, 8, 9]
arr2 = [1, 4, 5, 7]

p arr1 + arr2
p merge_sort(arr1 + arr2)
