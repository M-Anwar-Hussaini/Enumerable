module MyEnumerable
  # The all? method checks if a given condition (block) is true for all elements in the collection.
  def all?
    each { |item| return false unless yield(item) }
    true
  end

  # The any? method checks if at least one element in the collection
  # satisfies a given condition (block).
  def any?
    each { |item| return true if yield(item) }
    false
  end

  # The filter method is used to create a new array containing elements
  # from the collection that satisfy a given condition (block).
  def filter
    result = []
    each { |item| result << item if yield(item) }
    result
  end
end
