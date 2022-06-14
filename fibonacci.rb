def fibs(number)
  output_array = []

  number.times { |i| i < 2 ? output_array.push(i) : output_array.push(output_array[-2] + output_array [-1]) }

  output_array
end

def fibs_rec(number, array = [])
  if number > 1
    fibs_rec(number - 1) + fibs_rec(number - 2)
  else
    number
  end
end
