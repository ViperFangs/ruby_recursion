def fibs(n)
  output_array = []
  n.times do |i|
    if i < 2
      output_array.push(i)
    else
      output_array.push(output_array[i - 2] + output_array [i - 1])
    end
  end
  output_array
end
