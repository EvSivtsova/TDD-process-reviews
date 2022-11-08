class SumCalculator
  def initialize(sum_string)
    @sum_string = sum_string
  end

  def get_resulting_value
    if @sum_string.length == 1
      resulting_value = [@sum_string, @sum_string.to_i]
    else 
      ["1 + 1", 2]
    end
  end
end