require 'spec_helper'
require_relative '../bubble_sort.rb'

RSpec.describe 'Bubble Sort' do

    context 'with only one iteration needed' do
        it 'prints out the correct sorting' do
            expect(bubble_sort([1, 3, 2])).to eq([1, 2, 3])
        end
    end

    context 'with more than one iteration needed' do
        it 'prints out the correct sorting' do
            expect(bubble_sort([3, 2, 1])).to eq([1, 2, 3])
        end
    end

    context 'with a long array' do
        it 'prints out the correct sorting' do
            expect(bubble_sort([8, 9, 10, 13, 5, 8, 6, 3, 1, 2, 0])).to eq([0, 1, 2, 3, 5, 6, 8, 8, 9, 10, 13])
        end
    end

end