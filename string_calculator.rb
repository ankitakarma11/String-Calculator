class StringCalculator
  def self.add(numbers)
    sum = 0
    negatives = []

    return sum if numbers.empty?

    numbers = numbers.split(",")
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
end