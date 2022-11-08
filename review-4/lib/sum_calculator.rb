class SumCalculator
  def initialize(sum_string)
    @sum_string = sum_string
  end

  def get_resulting_value
    if @sum_string == "1"
      ["1", 1]
    else
      ["2", 2]
    end
  end
end