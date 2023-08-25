require_relative 'my_enumerable'

class MyList
  include MyEnumerable

  def initialize(*args)
    @list = args
  end

  def each(&block)
    @list.each(&block)
  end
end

new_list = MyList.new(1, 2, 3, 4)
puts(new_list.all? { |elem| elem < 5 })
puts(new_list.all? { |elem| elem > 5 })
puts(new_list.any? { |elem| elem == 2 })
puts(new_list.any? { |elem| elem == 5 })
puts(new_list.filter(&:even?))
puts(new_list.filter(&:odd?))
