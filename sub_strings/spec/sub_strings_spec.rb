require 'spec_helper'
require_relative '../sub_strings.rb'

RSpec.describe 'Substrings' do

    context 'with single word and single letter' do
        it 'returns the correct amount of substrings found' do
            expect(substrings('Hello', ['o'])).to eq({'o' => 1})
        end
    end

    context 'with single word and multiple letters together' do
        it 'returns the correct amount of substrings found' do
            expect(substrings('Hello', ['llo', 'll', 'He'])).to eq({'llo' => 1, 'll' => 1, 'He' => 1})
        end
    end

    context 'with sentences' do
        it 'returns the correct amount of substrings found' do
            expect(substrings('Hello, world! Nice to meet you!', ['o', 'ee', 'to'])).to eq({'o' => 4, 'ee' => 1, 'to' => 1})
        end
    end

    context 'with incorrect capitalizations' do
        it 'still returns the correct substring count' do
            expect(substrings('Hello, world! Nice to meet you!', ['O', 'Ee', 'TO'])).to eq({'O' => 4, 'Ee' => 1, 'TO' => 1})
        end
    end
    
end