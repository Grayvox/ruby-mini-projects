require 'spec_helper'
require_relative '../stock_picker.rb'

RSpec.describe 'Stock Picker' do

    context 'with a basic array' do
        it 'prints out the correct indexes' do
            expect(stock_picker([1, 2, 3, 4])).to eq([0, 3])
        end
    end

    context 'with multiple buy and sell possibilities' do
        it 'prints out the correct indexes' do
            expect(stock_picker([22, 1, 4, 5, 19, 1, 2])).to eq([1, 4])
        end
    end

    context 'with only one value' do
        it 'prints out 0 and 0' do
            expect(stock_picker([22])).to eq([0, 0])
        end
    end

end 