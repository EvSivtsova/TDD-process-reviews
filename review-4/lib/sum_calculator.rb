class SumCalculator
  def initialize(sum_string)
    @sum_string = sum_string
  end

  def get_resulting_value
    resulting_value = []
    resulting_value.push(@sum_string)
    resulting_value.push(@sum_string.to_i)
  end
end