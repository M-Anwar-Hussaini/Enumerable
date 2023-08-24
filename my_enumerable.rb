module MyEnumerable
  # This method iterates over each item in the collection and yields it to the block.
  def all?
    each { |item| return false unless yield(item) }
    true
  end

  # This method iterates over each item in the collection and yields it to the block.
  def any?
    each { |item| return true if yield(item) }
    false
  end

  # This method iterates over each item in the collection and yields it to the block.
  def filter
    result = []
    each { |item| result << item if yield(item) }
    result
  end
end
