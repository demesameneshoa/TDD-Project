class Solver
  # Implementation for the reverse method
  def reverse(word)
    word.reverse
  end

  def self.factorial(num)
    raise ArgumentError, 'Input must be a non-negative integer' unless num.is_a?(Integer) && num >= 0

    return 1 if num.zero?

    (1..num).reduce(:*)
  end
end
