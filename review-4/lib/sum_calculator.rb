class SumCalculator
  def initialize(sum_string)
    @sum_string = sum_string
  end

  def get_resulting_value
    resulting_value = [@sum_string, @sum_string.to_i]
  end
end