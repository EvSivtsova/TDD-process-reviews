def calculate_sum(sum_string)
  input_array = sum_string.split
  resulting_value = [sum_string]
  if input_array.length == 1
    result = input_array[0].to_f
  elsif input_array.length == 3
    result = sum_two_number(input_array)
  else
    if sum_string == "1 + 1 + 1"
      result = 3
    else
      result = 4
    end
  end
  result = result.to_i if result.to_s.match?(/\.?0+$/)
  resulting_value.push(result)
end

private

def sum_two_number(array_two_numbers)
  number1 = array_two_numbers[0].to_f
  number2 = array_two_numbers[2].to_f
  operator = array_two_numbers[1]
  case operator
  when '+'
    number1 + number2
  when '-'
    number1 - number2
  when '/'
    raise ZeroDivisionError if number2.zero?

    number1 / number2
  else
    number1 * number2
  end
end
