class Solver
  # Implementation for the reverse method
  def self.reverse(word)
    raise ArgumentError, 'Input must be a string' unless word.is_a?(String) || word.is_a?(Array)

    word.reverse if word.is_a?(String)
  end

  def self.factorial(num)
    raise ArgumentError, 'Input must be a non-negative integer' unless num.is_a?(Integer) && num >= 0

    return 1 if num.zero?

    (1..num).reduce(:*)
  end

  def fizzbuzz(number)
    return '0' if number.zero?

    # * More scalable if new conditions are added,
    # * i.e: adding "bang" for numbers divisible by 7, etc.
    divisibility_patterns = {
      3 => 'fizz',
      5 => 'buzz'
    }

    result = divisibility_patterns.map do |divisible, word|
      word if (number % divisible).zero?
    end.compact # * compact removes nil values

    return number.to_s if result.empty?

    result.join
  end
end
