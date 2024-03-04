class StringCalculator
  def self.add(numbers)
    sum = 0
    negatives = []

    return sum if numbers.empty?

    delimiter = fetch_delimiter(numbers)
    numbers = numbers.split(delimiter)
   
    numbers.each do |num|
      num = num.to_i
      if num.negative?
        negatives << num 
      else
        sum = sum + num
      end
    end

    if negatives.size > 1
      raise "Negative numbers not allowed: #{negatives.join(',')}"
    else
      return sum
    end
  end


  private

  def self.fetch_delimiter(numbers)
    delimiter = /[,\n]/
    if numbers.start_with?("//")
      delimiter = numbers[2]
      numbers = numbers[4..-1]
    end
    delimiter
  end

end

