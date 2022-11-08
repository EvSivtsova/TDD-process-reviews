def calculate_sum(sum_string)
  input_array = sum_string.split
  resulting_value = [sum_string]
  if sum_string.length == 1
    result = input_array[0].to_i
  else
    result = sum_two_number(input_array)
  end
  resulting_value.push(result)
end

private

def sum_two_number(array_two_numbers)
  if array_two_numbers[1] == '+'
    array_two_numbers[0].to_i + array_two_numbers[2].to_i
  elsif array_two_numbers[1] == '-'
    array_two_numbers[0].to_i - array_two_numbers[2].to_i
  elsif array_two_numbers[1] == '/'
    array_two_numbers[0].to_i / array_two_numbers[2].to_i
  else
    array_two_numbers[0].to_i * array_two_numbers[2].to_i
  end
end
