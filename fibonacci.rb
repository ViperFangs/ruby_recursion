def fibs(number)
  output_array = []
  number.times do |i|
    if i < 2
      output_array.push(i)
    else
      output_array.push(output_array[i - 2] + output_array [i - 1])
    end
  end
  output_array
end

def fibs_rec(number)
  if (0..1).include? number
    p number
  else
    p fibs_rec(number - 2) + fibs_rec(number - 1)
  end
end

fibs_rec(5)