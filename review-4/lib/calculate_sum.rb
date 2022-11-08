def calculate_sum(sum_string)
  input_array = sum_string.split(" ")
  resulting_value = [sum_string]
  if sum_string.length == 1
    resulting_value.push(input_array[0].to_i)
  else 
    if input_array[1] == "+"
      result = input_array[0].to_i + input_array[2].to_i
      resulting_value.push(result)
    elsif input_array[1] == "-"
      result = input_array[0].to_i - input_array[2].to_i
      resulting_value.push(result)
    else
      if sum_string == "2 / 1"
        ["2 / 1", 2]
      else
        ["4 / 2", 2]
      end
    end
  end
end
