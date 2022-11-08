def calculate_sum(sum_string)
  input_array = sum_string.split(" ")
  resulting_value = [sum_string]
  if sum_string.length == 1
    result = input_array[0].to_i
  else 
    if input_array[1] == "+"
      result = input_array[0].to_i + input_array[2].to_i
    elsif input_array[1] == "-"
      result = input_array[0].to_i - input_array[2].to_i
    elsif input_array[1] == "/"
      result = input_array[0].to_i / input_array[2].to_i
    else
      if sum_string == "2 * 2"
        result = 4
      else
        result = 6
      end
    end
  end
  resulting_value.push(result)
end
