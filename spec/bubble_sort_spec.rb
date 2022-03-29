# frozen_string_literal: true

require 'rspec'
require './src/bubble_sort'

describe BubbleSort do
  describe 'sort' do
    it 'Lesson Example' do
      numerical_array = [4, 3, 78, 2, 0, 2]
      expected = [0, 2, 2, 3, 4, 78]
      expect(BubbleSort.new.sort(numerical_array)).to eq(expected)
    end

    it 'Edge Case 1' do
      numerical_array = [1, 20, 0]
      expected = [0, 1, 20]
      expect(BubbleSort.new.sort(numerical_array)).to eq(expected)
    end

    it 'Edge Case 2' do
      numerical_array = [20, 1, 0]
      expected = [0, 1, 20]
      expect(BubbleSort.new.sort(numerical_array)).to eq(expected)
    end
  end
end
