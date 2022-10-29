def generate_report(grades)
  grades_array = grades.split(', ')
  grades_frequency = count_grades(grades_array)
  @report = ''
  format_grades_hash_into_string(grades_frequency)
  @report
end

private

def count_grades(grades_array)
  grades_range = ['Green', 'Amber', 'Red']
  grades_frequency = Hash.new(0)
  grades_range.map do |grade|
    grades_array.map do |grade_input|
      raise 'The grades can be only Green, Amber and Red' unless grades_range.include?(grade_input.capitalize)
      next unless grade == grade_input.capitalize

      grades_frequency[grade] += 1
    end
  end
  grades_frequency
end

def format_grades_hash_into_string(grades_frequency)
  count = 0
  grades_frequency.map do |grade, frequency|
    count += 1
    @report += "#{grade}: #{frequency}#{grades_frequency.length == count ? '' : '\n'}"
  end
end
