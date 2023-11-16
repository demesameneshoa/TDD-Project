class Solver
  # Implementation for the reverse method
  def self.reverse(word)
    raise ArgumentError, 'Input must be a string' unless word.is_a?(String) || word.is_a?(Array)

    if word.is_a?(String)
        word.reverse
      elsif word.is_a?(Array)
        word.reverse
      end
  end

  def self.factorial(num)
    raise ArgumentError, 'Input must be a non-negative integer' unless num.is_a?(Integer) && num >= 0

    return 1 if num.zero?

    (1..num).reduce(:*)
  end
end
