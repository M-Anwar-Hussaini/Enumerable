# This module provides implementations of several common Enumerable methods, which are commonly used for iterating and working with collections in Ruby.
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
end
