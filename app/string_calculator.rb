class StringCalculator
  def self.add(numbers)
    return 0 if numbers == ""

    if numbers.length == 1
      return numbers.to_i
    end

    delimiter = ','
    numbers = numbers.split(/#{delimiter}|\n/)
    numbers.inject(0) { |sum, num| sum + num.to_i }
  end
end
