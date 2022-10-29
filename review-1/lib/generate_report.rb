def generate_report(grades)
  grades_array = grades.split(', ')
  grades_frequency = count_grades(grades_array)
  @report = ''
  format_grades_hash_into_string(grades_frequency)
  @report
end

private

def count_grades(grades_array)
  grades_frequency = Hash.new(0)
  grades_array.map do |colour|
    grades_frequency[colour] += 1 if grades_frequency.key(colour).nil?
  end
  grades_frequency
end

def format_grades_hash_into_string(grades_frequency)
  count = 0
  grades_range = ['Green', 'Amber', 'Red']
  grades_range.map do |grade|
    grades_frequency.map do |colour, frequency|
      next if grade != colour

      count += 1
      new_line = grades_frequency.length == count ? '' : '\n'
      @report += grade + ': ' + frequency.to_s + new_line
    end
  end
end
