module Enumerable
  # Your code goes here
  def my_each_with_index
    index = 0
    for number in self
      yield number, index
      index += 1
    end
  end

  def my_select
    formated_output = []
    for number in self
      formated_output.push(number) if yield(number)
    end
    formated_output
  end
end

# You will first have to define my_each
# on the Array class. Methods defined in
# your enumerable module will have access
# to this method
class Array
  # Define my_each here
  def my_each
    for number in self
      yield number
    end
  end
end

hello = [1, 1, 2, 3, 5, 8, 13, 21, 34]
hello.my_select { |v| v > 10 }