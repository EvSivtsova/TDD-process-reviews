def calculate_sum(sum_string)
  input_array = sum_string.split
  resulting_value = [sum_string]
  if input_array.length == 1
    result = input_array[0].to_f
  else
    result = sum_two_number(input_array)
    if result.to_s.match?(/\.?0+$/)
      result = result.to_i
    end
  end
  resulting_value.push(result)
end

private

def sum_two_number(array_two_numbers)
  if array_two_numbers[1] == '+'
    array_two_numbers[0].to_f + array_two_numbers[2].to_f
  elsif array_two_numbers[1] == '-'
    array_two_numbers[0].to_f - array_two_numbers[2].to_f
  elsif array_two_numbers[1] == '/'
    array_two_numbers[0].to_f / array_two_numbers[2].to_f
  else
    array_two_numbers[0].to_f * array_two_numbers[2].to_f
  end
end
