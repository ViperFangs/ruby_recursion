# frozen_string_literal: true

def fibs(number)
  output_array = []

  number.times { |i| i < 2 ? output_array.push(i) : output_array.push(output_array[-2] + output_array [-1]) }

  output_array
end

def fibs_rec(number, array = [])
  return array.push(number) if number < 2
  return array.push(0, 1) if number == 2

  fibs_rec(number - 1, array)
  array.push(array[-2] + array [-1])
end
