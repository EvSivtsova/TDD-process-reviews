def generate_report(results)
  results_array = results.split(', ')
  results_frequency = Hash.new(0)
  results_array.map do |colour|
    results_frequency[colour] += 1 if results_frequency.key(colour) == nil
  end
  count = 0
  report = ''
  results_frequency.map do |key, value|
    count += 1
    if results_frequency.length == count 
      grade_string = key + ': ' + value.to_s
    else
      grade_string = key + ': ' + value.to_s + '\n' 
    end
    report +=  grade_string
  end
  return report
end