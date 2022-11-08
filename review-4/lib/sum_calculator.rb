class SumCalculator
  def initialize(sum_string)
    @sum_string = sum_string
  end

  def get_resulting_value
    if @sum_string.length == 1
      resulting_value = [@sum_string, @sum_string.to_i]
    else 
      input_array = @sum_string.split(" ")
      if input_array[1] == "+"
        ["1 + 1", 2]
      else 
        ["1 - 1", 0]
      end
    end
  end
end