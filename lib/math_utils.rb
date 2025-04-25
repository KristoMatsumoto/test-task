module MathUtils
  def self.fibonacci(n)
    raise ArgumentError, 'n must be a positive integer' unless n.is_a?(Integer) && n > 0
    
    fibs = [0, 1]
    (2...n).each do |i| fibs << fibs[-1] + fibs[-2] end
    fibs.first(n)
  end

  def self.factorials(n)
    raise ArgumentError, 'n must be a positive integer' unless n.is_a?(Integer) && n > 0

    result = [1]
    (1...n).each do |i| result << result[-1] * i end
    result.first(n)
  end
end