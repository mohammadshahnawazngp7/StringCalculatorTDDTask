class StringCalculator
  def self.add(numbers)
    delimiter = ','
    if numbers.start_with?("//")
      delimiter = numbers[2]
      numbers = numbers[(numbers.index("\n")+1)..-1]
    end

    numbers = numbers.split(/#{delimiter}|\n/)
    negatives = numbers.select { |n| n.to_i.negative? }

    if negatives.any?
      raise "Negative numbers not allowed: #{negatives.join(', ')}"
    end

    numbers.inject(0) { |sum, num| sum + num.to_i }
  end
end
