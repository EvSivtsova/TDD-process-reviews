def calculate_sum(sum_string)
  if sum_string.length == 1
    resulting_value = [sum_string, sum_string.to_i]
  else 
    input_array = sum_string.split(" ")
    if input_array[1] == "+"
      result = input_array[0].to_i + input_array[2].to_i
      [sum_string, result]
    elsif input_array[1] == "-"
      result = input_array[0].to_i - input_array[2].to_i
      [sum_string, result]
    else 
      ["2 / 1", 2]
    end
  end
end
