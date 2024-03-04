class StringCalculator
  def self.add(numbers)
    sum = 0
    return sum if numbers.empty?

    numbers = numbers.split(",")
    numbers.each do |num|
      num = num.to_i
      sum = sum + num
    end

    sum
  end
end