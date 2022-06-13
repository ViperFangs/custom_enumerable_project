# frozen_string_literal: true

# rubocop:disable Style/For

# add my_methods to the Enumerable module
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

  def my_all?
    for number in self
      return false unless yield number
    end
    true
  end

  def my_any?
    for number in self
      return true if yield number
    end
    false
  end

  def my_none?
    for number in self
      return false if yield number
    end
    true
  end

  def my_count
    return to_a.length unless block_given?

    count = 0
    for number in self
      count += 1 if yield number
    end
    count
  end

  def my_map
    formatted_output = []

    for number in self
      formatted_output << yield(number)
    end
    formatted_output
  end

  def my_inject; end
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

# rubocop:enable Style/For
