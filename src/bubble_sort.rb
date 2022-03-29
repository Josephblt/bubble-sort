# frozen_string_literal: true

# Sorts a numeric array using Bubble sort technique.
class BubbleSort
  def sort(sort_array)
    sort_depth = sort_array.length - 1
    while sort_depth.positive?
      switch_iterate sort_array, sort_depth
      sort_depth -= 1
    end
    sort_array
  end

  def switch_iterate(sort_array, sort_depth)
    sort_array.each_with_index do |_element, index|
      break if index == sort_depth
      break if index == sort_array.length - 1

      switch_positions sort_array, index, index + 1 if needs_switch sort_array, index, index + 1
    end
  end

  def needs_switch(sort_array, index_a, index_b)
    sort_array[index_a] > sort_array[index_b]
  end

  def switch_positions(sort_array, index_a, index_b)
    element_a = sort_array[index_a]
    element_b = sort_array[index_b]
    sort_array[index_a] = element_b
    sort_array[index_b] = element_a
  end
end

# 4,3,78,2,0,2
puts 'Enter array:'
sort_array = gets.chomp
sort_array = sort_array.split(',').map(&:to_i)
print BubbleSort.new.sort sort_array
